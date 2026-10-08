---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	"@odata.type" = "#microsoft.graph.profileSource"
	sourceId = "bamboohr1"
	kind = "BambooHR"
	displayName = "BambooHR Updated"
	webUrl = "https://bamboohr.contoso.com/login"
	localizations = @(
		@{
			displayName = "HR-Platform"
			webUrl = "http://bamboohr.contoso.com/en-us/login"
			languageTag = "en-us"
		}
		@{
			displayName = "HR-Plattform"
			webUrl = "http://bamboohr.contoso.com/de/login"
			languageTag = "de"
		}
	)
}

Update-MgBetaAdminPeopleProfileSourceBySourceId -BodyParameter $params -SourceId $sourceIdId 

```