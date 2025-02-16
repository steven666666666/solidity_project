// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EnumExample {
    enum Status {
        Pending,
        Shipping,
        Delivered,
        Canceled
    }

    Status public orderStatus;

    function setStatus(Status _status) public {
        orderStatus = _status;
    }

    function getStatus() public view returns (Status) {
        return orderStatus;
    }

    function isShipped() public view returns (bool) {
        return orderStatus == Status.Shipping;
    }

    function getStatusValue() public view returns (uint8) {
        return uint8(orderStatus);
    }
}
