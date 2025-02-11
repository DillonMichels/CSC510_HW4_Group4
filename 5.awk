BEGIN { count=0 }
{ print $0; count++ }
count == 5 { exit }