XML_FILE="/data/user/0/com.termux/files/home/reserve/settings.xml"
generate_hex() {
    cat /dev/urandom | tr -dc 'a-f0-9' | fold -w 16 | head -n 1
}
xmlstarlet ed -L \
    -u "//setting[@package='com.axlebolt.standoff2']/@value" -v "$(generate_hex)" \
    -u "//setting[@package='com.axlebolt.standoff2']/@defaultValue" -v "$(generate_hex)" \
    "$XML_FILE"
echo "Updated XML values for com.axlebolt.standoff2."