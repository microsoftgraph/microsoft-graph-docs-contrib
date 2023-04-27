---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	labels = @(
		@{
			name = "changedLabel"
			languageTag = "en-US"
			isDefault = $true
		}
	)
}

Update-MgSiteTermStoreSetTerm -SiteId $siteId -SetId $setId -TermId $termId -BodyParameter $params

```