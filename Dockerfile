# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

RUN apk update --no-cache && \
    apk add --no-cache curl && \
		apk add librdkafka-dev

RUN curl -sL --http1.1 https://cnfl.io/cli | sh -s -- -b /bin v2.4.0

RUN chmod +x /bin/confluent

WORKDIR /source

COPY getting-started-guides/dotnet/. .

ENTRYPOINT ["sh"]
