// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;


//솔리디티강좌12강 상속3-두개 이상 상속하기
contract Father {
    string public familyName = "Kim";
    string public givenName = "Jung";
    uint256 public money = 100;

    constructor(string memory _givenName) { // public 이 더이상 필요하지 않음
        givenName = _givenName;
    }

    function getFamilyName() view public returns (string memory) {
        return familyName;
    }

    function getGivenName() view public returns (string memory) {
        return givenName;
    }

    function getMoney() view public virtual returns (uint256) {
        return money;
    }

}

contract Son is Father("James") {

    // constructor() Father("James") {
    // }

    uint256 public earning = 0;
    function work() public {
        earning += 100;
    }
    function getMoney() view public override returns (uint256) {
        return money + earning;
    }

}