---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Publisher = "International Association of Branding Management Publishing"
	ThumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg"
}

Update-MgUserProfilePublication -UserId $userId -ItemPublicationId $itemPublicationId -BodyParameter $params

```