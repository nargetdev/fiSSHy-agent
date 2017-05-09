#!/usr/local/bin/fish

# Export ssh-agent var "SSH_AUTH_SOCK"
set line 1
echo (ssh-agent|awk -F'=' -v line=$line 'FNR == line {print $1}')  "-->"  (ssh-agent|awk -F';|=' -v line=$line 'FNR == line {print $2}')
set -x (ssh-agent|awk -F'=' -v line=$line 'FNR == line {print $1}') (ssh-agent|awk -F';|=' -v line=$line 'FNR == line {print $2}')

# Export ssh-agent var "SSH_AGENT_PID"
set line 2
echo (ssh-agent|awk -F'=' -v line=$line 'FNR == line {print $1}')  "-->"  (ssh-agent|awk -F';|=' -v line=$line 'FNR == line {print $2}')
set -x (ssh-agent|awk -F'=' -v line=$line 'FNR == line {print $1}') (ssh-agent|awk -F';|=' -v line=$line 'FNR == line {print $2}')
