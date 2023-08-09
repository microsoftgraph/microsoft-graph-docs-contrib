---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	issuingAuthority = "International Association of Branding Management"
	thumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg"
}

Update-MgBetaUserProfileAward -UserId $userId -PersonAwardId $personAwardId -BodyParameter $params

```