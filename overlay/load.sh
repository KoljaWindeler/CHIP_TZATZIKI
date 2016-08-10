DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sudo rmdir /sys/kernel/config/device-tree/overlays/JKW_TZATZKI/ >/dev/null 2>&1;
sudo mkdir /sys/kernel/config/device-tree/overlays/JKW_TZATZKI
dmesg >/tmp/pre_JKW_TZATZKI_load
su -c 'cat '$DIR'/JKW_tzatziki.dtbo > /sys/kernel/config/device-tree/overlays/JKW_TZATZKI/dtbo'
sleep 3
dmesg >/tmp/post_JKW_TZATZKI_load
diff /tmp/pre_JKW_TZATZKI_load /tmp/post_JKW_TZATZKI_load
rm /tmp/pre_JKW_TZATZKI_load /tmp/post_JKW_TZATZKI_load

