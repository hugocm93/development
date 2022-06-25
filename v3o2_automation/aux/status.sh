#!/bin/bash

source "$(dirname "${BASH_SOURCE[0]}")/get-param.sh"

function status-func()
{
    get-param-func $1
    assignee=$ret

    if test -n "$assignee"; then
        assignee="-a$assignee"
    fi

    jira sprint list --current $assignee -t"Technical task" -s"$2" --columns key --plain --no-headers | xargs

    exit $?
}
