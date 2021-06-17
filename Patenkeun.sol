pragma solidity >=0.5.0 <0.7.0;
//version 1.5

contract Grant {
    address public patentaddress;
    address public productaddress;
    uint public grantprice;
    
    //constructor yang akan dipanggil oleh fungsi create di contract paten
    constructor(address _patentaddress, address _productaddress, uint _grantprice) public {
        patentaddress = _patentaddress;
        productaddress = _productaddress;
        grantprice = _grantprice;
    }
}

contract Patent {
    string public patentname;
    address payable public patentowner;
    uint256 public grantprice;
    
    constructor(string memory _patentname, uint _grantprice) public {
        patentname = _patentname;
        patentowner = msg.sender;
        grantprice = _grantprice;
    }

    //fungsi yang dipanggil oleh contract product saat ingin grant patent di contract ini (harusnya eksternal only tapi belum ngerti perbedaan argumennya dg public)
    function create(address _productaddress) public payable returns (address) {
        address _productowner = Product(_productaddress).productowner();
        
        require(msg.sender == _productowner, "Caller is not product owner");
        require(msg.value >= grantprice, "Insufficient fund");

        //create smart contract baru sesuai tempalate contract Grant
        Grant grant = new Grant(address(this), _productaddress, msg.value);
        
        // Send money to patent owner
        patentowner.transfer(msg.value);

        return(address(grant)); //memberi informasi grant yang dibuat ke contract product
    }
}

contract Product {
    string public productname;
    address public productowner;

    constructor(string memory _productname) public {
        productname = _productname;
        productowner = msg.sender;
    }
}

contract PatentPool {
    address public poolOwnerAddress;
    
    address[] public pooledPatents;
    uint256[] public patentsPrice;
    address[] public patentsOwners;
    bool[] public patentsApprovals;
    
    uint256 public totalPrice = 0;
    bool public poolValid = false;

    constructor(address[] memory patents) public {
        poolOwnerAddress = msg.sender;

        pooledPatents = new address[](patents.length);
        patentsPrice = new uint256[](patents.length);
        patentsOwners = new address[](patents.length);
        patentsApprovals = new bool[](patents.length);
        
        for (uint i = 0; i < patents.length; i++) {
            address patentAddress = patents[i];
            
            Patent patent = Patent(patentAddress);
            totalPrice += patent.grantprice();
            
            pooledPatents[i] = patentAddress;
            patentsPrice[i] = patent.grantprice();
            patentsOwners[i] = patent.patentowner();
            patentsApprovals[i] = (patent.patentowner() == poolOwnerAddress);
        }
    }

    function create(address productAddress) public payable returns(address) {
        require(poolValid, "Pool not yet validated by all patent holders");
        
        address _productowner = Product(productAddress).productowner();

        require(msg.sender == _productowner, "Caller is not product owner");
        require(msg.value >= totalPrice, "Insufficient fund");

        address[] memory patentGrantAddresses = new address[](pooledPatents.length);
        
        PooledPatentGrant patentGrant = (new PooledPatentGrant)(productAddress);

        for (uint i = 0; i < pooledPatents.length; i++) {
            Patent patent = Patent(pooledPatents[i]);
            uint256 patentPrice = patentsPrice[i];
            address patentGrantAddress = patent.create.value(patentPrice)(address(patentGrant));
            patentGrantAddresses[i] = patentGrantAddress;
        }
        
        patentGrant.setPatentGrant(patentGrantAddresses);

        return address(patentGrant);
    }
    
    function validatePool() public {
        uint validatedPatents = 0;
        for (uint i = 0; i < patentsOwners.length; i++) {
            if (patentsOwners[i] == msg.sender) {
                patentsApprovals[i] = true;
            }
            
            if (patentsApprovals[i]) validatedPatents++;
        }
        
        if (validatedPatents == pooledPatents.length) {
            poolValid = true;
        }
    }
}

contract PooledPatentGrant {
    address[] public patentGrantAddresses;
    address public productAddress;
    address public productowner;

    constructor(address _productAddress) public {
        productAddress = _productAddress;
        productowner = msg.sender;
    }
    
    function setPatentGrant(address[] memory _patentGrantAddresses) public {
        require(patentGrantAddresses.length == 0, "Cannot set initialized pool!");
        
        patentGrantAddresses = new address[](_patentGrantAddresses.length);
        
        for (uint i = 0; i < _patentGrantAddresses.length; i++) {
            patentGrantAddresses[i] = _patentGrantAddresses[i];
        }
    }
}