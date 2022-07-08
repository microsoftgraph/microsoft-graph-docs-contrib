---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	Labels = @(
		@{
			LanguageTag = "en-US"
			Name = "Car"
			IsDefault = $true
		}
	)
}

New-MgSiteTermStoreSetChild -SiteId $siteId -SetId $setId -BodyParameter $params

```