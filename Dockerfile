FROM mcr.microsoft.com/windows/servercore:ltsc2019
#basic docker file with no build tools
WORKDIR /azp

COPY start.ps1 .

CMD powershell .\start.ps1