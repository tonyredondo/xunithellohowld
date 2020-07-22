FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
COPY --from=tonyredondo/dd-trace-dotnet-build:xunitinstrumentation / /
WORKDIR /app
COPY ./*.sln ./
COPY ./XUnitHelloWorld/*.csproj ./XUnitHelloWorld/
RUN dotnet restore
COPY . ./
RUN dotnet build
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
#ENV DD_TRACE_AGENT_URL=http://host.docker.internal:8126
#ENV DD_TRACE_AGENT_URL=http://172.17.0.1:8126
#ENTRYPOINT ["/dd-tracer-dotnet/dd-trace.bash", "dotnet", "test"]
