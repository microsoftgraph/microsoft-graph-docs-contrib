---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	TemplateId = "62375ab9-6b52-47ed-826b-58e47e0e304b"
	Values = @(
		@{
			Name = "GuestUsageGuidelinesUrl"
			Value = "https://privacy.contoso.com/privacystatement"
		}
		@{
			Name = "EnableMSStandardBlockedWords"
			Value = "true"
		}
		@{
			Name = "EnableMIPLabels"
			Value = "true"
		}
		@{
			Name = "PrefixSuffixNamingRequirement"
			Value = "[Contoso-][GroupName]"
		}
	)
}

New-MgDirectorySetting -BodyParameter $params

```