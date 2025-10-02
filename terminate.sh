#!/usr/bin/env bash
set -e

INSTANCE_ID="$1"
if [ -z "$INSTANCE_ID" ]; then
  echo "Usage: $0 <instance-id>"
  exit 1
fi

read -p "Are you sure you want to TERMINATE instance $INSTANCE_ID? This is irreversible. (yes/no): " CONFIRM
if [ "$CONFIRM" != "yes" ]; then
  echo "Aborted."
  exit 0
fi

echo "Terminating instance $INSTANCE_ID..."
aws ec2 terminate-instances --instance-ids "$INSTANCE_ID"
aws ec2 wait instance-terminated --instance-ids "$INSTANCE_ID"
echo "Instance $INSTANCE_ID terminated."
