---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	description = "One persons journey to the top of the branding management field."
	displayName = "Got Brands? The story of Innocenty Popov and his journey to the top."
	publishedDate = "Date"
	publisher = "International Association of Branding Management Publishing"
	thumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg"
	webUrl = "https://www.iabm.io"
}

# A UPN can also be used as -UserId.
New-MgUserProfilePublication -UserId $userId -BodyParameter $params

```