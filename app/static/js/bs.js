const form_dom_element = document.getElementById('something_unique');
const mac_address_to_send_wake_on_lan_to = document.getElementById('mac_address_to_send_wake_on_lan_to');
form_dom_element.onsubmit = foo;

async function foo(event) {
    // prevent redirect, which is the browser's default action
    event.preventDefault();
    const mac_address_to_send_wake_on_lan_to_value = mac_address_to_send_wake_on_lan_to.value


    try {
        const response = await fetch(
        "/api/wol?mac_address_to_send_wake_on_lan_to="+mac_address_to_send_wake_on_lan_to_value
        )

        const next_response = await response.json()
    } catch (error) {
        console.log(error)
    }
}