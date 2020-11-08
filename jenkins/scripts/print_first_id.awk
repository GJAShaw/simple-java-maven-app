# ------------------------------------------------------------------------------
# file: print_first_id.awk
# type: AWK script
# project: n/a
# purpose: print the first id from results of Nexus RM API /service/rest/v1
# ------------------------------------------------------------------------------
BEGIN {}

# look for "id" : "bWF2ZW4tcYj... GJmNmZlMWQ5MTY0"
/^[[:space:]]*"id"[[:space:]]*:[[:space:]]*"[[:alnum:]]+"/ {

    gsub(/[",]/, "", $3) # strip enclosing quotes and final comma
    print $3
    exit 0

}

END{}
