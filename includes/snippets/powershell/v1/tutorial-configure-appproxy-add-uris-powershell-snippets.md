---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	identifierUris = @(
	"api://32977d3b-ee0e-4614-9f50-f583a07842d2"
)
web = @{
	redirectUris = @(
	"https://contosoiwaapp-contoso.msappproxy.net"
)
homePageUrl = "https://contosoiwaapp-contoso.msappproxy.net"
}
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```