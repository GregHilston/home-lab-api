#!/bin/bash
set -e

mac_address_to_send_wake_on_lan_to=$1

etherwake $mac_address_to_send_wake_on_lan_to
