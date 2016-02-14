# dr-baseimage-alpine

Simple base image from Alpine linux which adds a dr user and group
and creates the /dr directory with appropriate permissions.

Leaves the user as root, derived containers need to set USER druser.
