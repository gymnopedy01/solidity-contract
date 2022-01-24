// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//솔리디티 강좌 8강 instance1 - 정의
contract A {

    uint256 public a = 5;

    function change(uint256 _value) public {
        a = _value;
    }

}

contract B {

    A instanceA = new A();

    function getA() public view returns(uint256) {
        return instanceA.a();       //괄호를 붙여줘야 a 가 리턴됨
    }

    function change_A(uint256 _value) public {
        instanceA.change(_value);
    }

}
