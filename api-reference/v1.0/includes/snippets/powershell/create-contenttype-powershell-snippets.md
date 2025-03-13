---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	name = "docSet"
	description = "custom docset"
	base = @{
		name = "Document Set"
		id = "0x0120D520"
	}
	group = "Document Set Content Types"
}

New-MgSiteContentType -SiteId $siteId -BodyParameter $params

```