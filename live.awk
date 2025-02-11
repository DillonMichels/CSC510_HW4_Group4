BEGIN { FS="," }

NR > 1 {
    split($0, fields, ",")  
    class = fields[3] 
    survival_status = fields[2]
    total[class]++
    if (survival_status == "1") {
        survived[class]++
    }
}

END {
    for (c in total) {
        rate = (survived[c] / total[c]) * 100
        printf "Class %s: %.2f%% survived\n", c, rate
    }
}
