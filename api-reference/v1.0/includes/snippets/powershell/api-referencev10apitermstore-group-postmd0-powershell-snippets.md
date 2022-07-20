---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	DisplayName = "myGroup"
}

New-MgSiteTermStoreGroup -SiteId $siteId -BodyParameter $params

```