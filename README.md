# Check Point Virtual System Routing Table Filter Script

This script lists the active virtual systems identified by the vsx stat -v command, checks for a specified filter argument, and then displays the routing table, filtered by the provided argument, for each active virtual system.

## Usage

To use this script, you need to pass a single argument that serves as the filter for the routing table entries. The argument should be a string or pattern that grep can recognize. Here's how to execute the script:

  ./vs_routing_filter.sh <filter_value>

Replace <filter_value> with the actual value you wish to filter the routing tables by.

Example

./vs_routing_filter.sh 192.168.1.0

This command filters the routing tables for entries related to 192.168.1.0.

## Script Features

Filtered Routing Table Display: For each active virtual system, the script switches context using vsenv and then displays the routing table entries matching the provided filter.

## Troubleshooting

If you encounter any issues while running the script, consider the following troubleshooting steps:

    Ensure you have the required permissions to run the vsx stat, vsenv, and netstat commands.
    Verify that there are active virtual systems available on your system.
    Check the syntax of the filter value to ensure it's a valid grep pattern.
