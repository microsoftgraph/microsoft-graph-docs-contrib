---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	"@odata.type" = "#microsoft.graph.namePronunciationSettings"
	isEnabledInOrganization = $true
}

Update-MgBetaAdminPeopleNamePronunciation -BodyParameter $params

```