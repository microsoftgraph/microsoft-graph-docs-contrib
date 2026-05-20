---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	"@odata.type" = "#microsoft.graph.approvedClientApp"
	displayName = "Client App 1"
}

Update-MgServicePrincipalRemoteDesktopSecurityConfigurationApprovedClientApp -ServicePrincipalId $servicePrincipalId -ApprovedClientAppId $approvedClientAppId -BodyParameter $params

```