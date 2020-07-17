#!/bin/bash

# CONFIGURE: Basic Script to configure DAP container as Master Server

# Global Variables
masterContainer="dap-standalone"
serverType="master"
masterDNS="dap-standalone.myorg.local"
adminPass="Cyberark1"
accountName="myorg"

# EVOKE: Execute evoke command to configure DAP container as Master Server
docker exec $masterContainer evoke configure $serverType --accept-eula --hostname $masterDNS --admin-password $adminPass $accountName
