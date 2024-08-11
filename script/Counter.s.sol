// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Raffel} from "../src/Raffel.sol";

contract CounterScript is Script {
    Raffel public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new Raffel(12);

        vm.stopBroadcast();
    }
}
