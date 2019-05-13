pragma solidity ^0.4.10;

contract StoreIntegerValue {
    address owner;
    int sensorData;

    function StoreIntegerValue() {
        owner = msg.sender;
    }

    function setSensorData(int _sensorData) {
        require(msg.sender == owner);
        sensorData = _sensorData;
    }

    function getSensorData() constant returns (int) {
        require(msg.sender == owner);
        return sensorData;
    }
}