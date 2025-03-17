kill $(pidof com.axlebolt.standoff2)
sh -c "logcat | grep -i -E 'ELFLoader:|LHIDE'" > log.txt