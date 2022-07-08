---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	HubSiteUrls = @(
		"https://graph.microsoft.com/beta/sites/id"
	)
	PropagateToExistingLists = $false
}

Join-MgSiteContentType -SiteId $siteId -ContentTypeId $contentTypeId -BodyParameter $params

```