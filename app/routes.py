import os
import subprocess
from flask import request

from app import app

http_ok_status_code = 200
http_internal_server_error_status_code = 500
successful_bash_status_code = 0


@app.route('/api/wol')
def index():
    http_bad_request_status_code = 400
    bad_request_message = "must be a provided GET parameter and a valid str"

    # network_interface_key = "network_interface"
    # network_interface = request.args.get(network_interface_key)
    # if network_interface is None:
    #     return network_interface_key + " " + bad_request_message, http_bad_request_status_code

    mac_address_to_send_wake_on_lan_to_key = "mac_address_to_send_wake_on_lan_to"
    mac_address_to_send_wake_on_lan_to = request.args.get(mac_address_to_send_wake_on_lan_to_key)
    if mac_address_to_send_wake_on_lan_to is None:
        return mac_address_to_send_wake_on_lan_to_key + " " + bad_request_message, http_bad_request_status_code

    response = subprocess.run(["./commands/wol.sh", mac_address_to_send_wake_on_lan_to])

    if response.returncode == successful_bash_status_code:
        return f"WOL packet sent to mac address '{mac_address_to_send_wake_on_lan_to}'", http_ok_status_code
    else:
        return "an unexpected internal error occurred", http_internal_server_error_status_code
