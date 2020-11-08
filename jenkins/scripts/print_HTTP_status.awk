# ------------------------------------------------------------------------------
# file: print_HTTP_status.awk
# type: AWK script
# project: n/a
# purpose: print the HTTP status line from curl output
# ------------------------------------------------------------------------------
BEGIN {}

# look for '< HTTP/1.1 200 OK'
/^[[:space:]]*<[[:space:]]+HTTP\/1\.1[[:space:]]+/ {

    print $0
    exit 0

}

END{}
