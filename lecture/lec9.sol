// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//솔리디티 강좌 9강 instance2 - constructor
contract A {

    string public name;
    uint256 public age;
    
    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }

}

contract B {

    A instanceA = new A("Alice", 52);

    function change(string memory _name, uint256 _age) public {
        instanceA.change(_name,_age);
    }

    function get() public view returns(string memory, uint256) {
        return (instanceA.name(), instanceA.age());
    }

    //클론팩토리패턴? 가스소비량을 줄일수있음
}
