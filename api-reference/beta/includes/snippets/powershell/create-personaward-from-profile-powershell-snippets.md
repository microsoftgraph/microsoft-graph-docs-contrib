---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	description = "Lifetime Achievement award from the International Association of Branding Managers"
	displayName = "Lifetime Achievement Award For Excellence in Branding"
	issuedDate = "Date"
	issuingAuthority = "International Association of Branding Management"
	thumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg"
	webUrl = "https://www.iabm.io"
}

# A UPN can also be used as -UserId.
New-MgUserProfileAward -UserId $userId -BodyParameter $params

```