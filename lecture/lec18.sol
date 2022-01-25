// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;


//솔리디티강좌18강 Array
contract lec18 {
    
    uint256[] public ageArray;
    uint256[10] public ageFixedSizeArray;
    string[] public nameArray = ["Kal", "Jhon", "Kerri"]

    function AgeLength() public view returns(uint256) {
        return ageArray.length;
    }

    //0 부터 시작, 0-50/ 1->70/  ㅣLength : 2
    function AgePush(uint256 _age) public {
        ageArray.push(_age);
    }

    // 1->70
    function AgeGet(uint256 _index) public view returns(uint256) {
        return ageArray[_index];
    }

    //제일 최신의 값을 삭제
    function agePop() public {
        ageArray.pop();
    }

    function ageDelete(uint256 _index) public {
        delete ageArray[_index];
    }

    function AgeChange(uint256 _index, uint256 _age) public {
        ageArray[_index] = _age;
    }





}
