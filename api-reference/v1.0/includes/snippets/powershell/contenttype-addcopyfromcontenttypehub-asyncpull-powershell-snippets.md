---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	ContentTypeId = "0x0101"
}

Add-MgSiteListContentTypeCopyFromContentTypeHub -SiteId $siteId -ListId $listId -BodyParameter $params

```