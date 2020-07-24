FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
COPY --from=tonyredondo/dd-trace-dotnet-build:xunitinstrumentation / /
WORKDIR /app
COPY ./*.sln ./
COPY ./XUnitHelloWorld/*.csproj ./XUnitHelloWorld/
RUN dotnet restore
COPY . ./
RUN dotnet build
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
ENTRYPOINT ["/dd-tracer-dotnet/dd-trace.bash", "dotnet", "test"]
