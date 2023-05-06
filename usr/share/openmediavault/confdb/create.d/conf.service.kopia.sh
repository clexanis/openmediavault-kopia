set -e

. /usr/share/openmediavault/scripts/helper-functions

SERVICE_XPATH_NAME="kopia"
SERVICE_XPATH="/config/services/${SERVICE_XPATH_NAME}"

if ! omv_config_exists "${SERVICE_XPATH}"; then
    omv_config_add_node "/config/services" "${SERVICE_XPATH_NAME}"
    omv_config_add_node "${SERVICE_XPATH}" "repos" ""
    omv_config_add_node "${SERVICE_XPATH}" "archives" ""
fi

if ! omv_config_exists "${SERVICE_XPATH}/envvars"; then
    omv_config_add_node "${SERVICE_XPATH}" "envvars" ""
fi

exit 0
