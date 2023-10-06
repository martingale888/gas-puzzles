// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ArraySort {
    //[2,5,1,6,4,8]
    //12506
    //12410
    //12178
    function sortArray(uint256[] memory data) external pure returns (uint256[] memory) {
        //uint256 dataLen = data.length;

        // Create 'working' copy
        // uint[] memory _data = new uint256[](dataLen);
        uint256 length  = data.length;
        // for (uint256 k = 0; k < length; k++) {
        //     _data[k] = data[k];
        // }
        uint256 _temp;
        uint256 i;
        uint256 j;
        for ( i = 0; i < length; i++) {
            for ( j = i+1; j < length; j++) {
                if(data[i] > data[j]){
                    _temp = data[i];
                    data[i] = data[j];
                    data[j] = _temp;
                }
            }
        }
        return data;
    }
}
