# Simple baseimage for dServices using Alpine Linux (small with package manager!)

FROM alpine
MAINTAINER j842

RUN apk add --no-cache bash curl wget gnupg

# we use non-root user in the container for security.
# dr expects uid 22022 and gid 22022.
RUN addgroup -S -g 22022 drgroup
RUN adduser -S -u 22022 -G drgroup -g '' druser

# create /drunner and allow druser write access.
RUN mkdir /drunner && chown druser:drgroup /drunner

# The derived containers need to set the USER to druser.
#USER druser
