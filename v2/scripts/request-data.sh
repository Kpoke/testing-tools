echo "checking api routes"
host=https://dev-k8s.treetracker.org

captures_url=${host}/field-data/raw-captures/${CAPTURE_UUID}
device_configuration_url=${host}/field-data/device-configuration/${DEVICE_CONFIGURATION_UUID}
wallet_registration_url=${host}/field-data/wallet-registration/${WALLET_REGISTRATION_UUID}
sessions_url=${host}/field-data/session/${SESSION_UUID}
message_url=${host}/messaging/message/${MESSAGE_UUID}

for url in \
  $captures_url, $device_configuration_url, $wallet_registration_url, $sessions_url, $message_url; do
  echo "route: ${url}"
  # return true to continue script
  curl $url || true
  echo
  echo
done
