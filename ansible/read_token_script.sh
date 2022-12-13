#!/bin/bash
filename='token.log'

rm kube-join-cmd.txt

while IFS= read -r line || [ -n "$line" ]; do
# reading each line
    echo $line
    # echo $n

    if [[ "$line" =~ .*"kubeadm join".* || "$line" =~ .*"--discovery-token-ca-cert-hash".* || "$line" =~ .*"--control-plane".*  ]]; then
        echo $line >> kube-join-cmd.txt
    fi

done < $filename