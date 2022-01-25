// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;


//솔리디티강좌16강 상속의 순서
contract Father {
    event FatherName(string name);
    function who() public virtual {
        emit FatherName("KimDaeho");
    }    
}

contract Mother {
    event MotherName(string name);
    function who() public virtual{
        emit MotherName("leeSol");
    }
}

contract Son is  Mother, Father {
    function who() public override(Father, Mother) {

        //contract 상속시 맨뒤에것이 호출된다. 상속이 덮어씌워지기때문
        super.who();
    }
}