---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	labels = @(
		@{
			languageTag = "en-US"
			name = "Car"
			isDefault = $true
		}
	)
}

New-MgSiteTermStoreSetChild -SiteId $siteId -SetId $setId -BodyParameter $params

```