FROM hairyhenderson/gomplate:slim AS gomplate

FROM alpine:3.15 AS final

COPY --from=gomplate /gomplate /bin/gomplate

RUN apk --no-cache add bash curl jq git
