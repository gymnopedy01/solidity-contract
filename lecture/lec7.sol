// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//솔리디ㅣ 강좌 6강 function3 - View 와 Pure
contract lec7 {
    /*
    storage: 대부분의 변수, 함수들이 저장되며, 영속적으로 저장이되어 가스 비용이 비싸답니다.
    memoery: 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장이 됩니다.
    그러나, storage 처럼 영속적이지 않고, 함수내에서만 유효하기에 storage 보다 가스비용이 싸답니다.
    colldata: 주로 external function 의 파라미터에서 사용됩니다.
    stack : EVM(Ethereum Virual Machine) 에서 stack data를 관리할때 쓰는 영역인데 1024mb 제한적입니다.
    */

    //function =string.
    function get_string(string memory _str) public pure returns(string memory) {
        return _str;
    }

    function get_uint(uint256 _ui) public pure returns(uint256) {
        return _ui;
    }

}