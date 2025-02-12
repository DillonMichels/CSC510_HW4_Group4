BEGIN { FS=","; total_age=0; count=0 }
NR > 1 && $6 != "" { total_age += $6; count++ }
END {
    if (count > 0) {
        average_age = total_age / count
        print "Average Age of Passengers: " average_age
    }
    else {
        print "No age data available"
    }
} 