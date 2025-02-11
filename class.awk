BEGIN { FS="," }
{ class_count[$3]++ }
END {
    for (c in class_count)
        print "Class " c ": " class_count[c]
}
