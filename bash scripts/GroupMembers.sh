#!/bin/bash

fetch_group_members() {
    group_name="$1"
    members=$(getent group "$group_name" | cut -d: -f4)
    echo "Members of group '$group_name':"
    echo "$members"
}


fetch_group_members "webAdmins"
