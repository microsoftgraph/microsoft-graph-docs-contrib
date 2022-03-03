---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Description = "One persons journey to the top of the branding management field."
	DisplayName = "Got Brands? The story of Innocenty Popov and his journey to the top."
	PublishedDate = "Date"
	Publisher = "International Association of Branding Management Publishing"
	ThumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg"
	WebUrl = "https://www.iabm.io"
}

# A UPN can also be used as -UserId.
New-MgUserProfilePublication -UserId $userId -BodyParameter $params

```