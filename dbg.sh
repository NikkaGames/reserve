kill $(pidof com.axlebolt.standoff2)
sh -c "logcat | grep -i -E 'DSystemServer:|ELFLoader:|LHIDE'" > log.txt