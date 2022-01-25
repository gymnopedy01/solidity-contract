// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;


//솔리디티강좌15강 상속4 - super
contract Father {
    event FatherName(string name);
    function who() public virtual {
        emit FatherName("KimDaeho");
    }    
}

contract Son is Father {
    event SonName(string name);
    function who() public override {
        super.who();
        emit SonName("KimJin");
    }
}
