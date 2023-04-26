---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	certificationId = "KB-1235466333663322"
	description = "Blackbelt in Marketing - Brand Management"
	displayName = "Marketing Blackbelt - Brand Management"
	thumbnailUrl = "https://iame.io/dfhdfdfd334.jpg"
	webUrl = "https://www.iame.io/blackbelt"
}

# A UPN can also be used as -UserId.
New-MgUserProfileCertification -UserId $userId -BodyParameter $params

```