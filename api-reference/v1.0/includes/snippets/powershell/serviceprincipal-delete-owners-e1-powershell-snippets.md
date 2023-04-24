---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	"@odata.id" = "https://graph.microsoft.com/v1.0/directoryObjects/{id}"
}

Remove-MgServicePrincipalOwnerByRef -ServicePrincipalId $servicePrincipalId -DirectoryObjectId $directoryObjectId -BodyParameter $params

```