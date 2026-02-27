---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	"@odata.type" = "#microsoft.graph.photoUpdateSettings"
	source = "String"
	allowedRoles = @(
	"String"
)
}

Update-MgBetaAdminPeoplePhotoUpdateSetting -BodyParameter $params

```