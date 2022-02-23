---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	CertificationId = "KB-1235466333663322"
	Description = "Blackbelt in Marketing - Brand Management"
	DisplayName = "Marketing Blackbelt - Brand Management"
	ThumbnailUrl = "https://iame.io/dfhdfdfd334.jpg"
	WebUrl = "https://www.iame.io/blackbelt"
}

# A UPN can also be used as -UserId.
New-MgUserProfileCertification -UserId $userId -BodyParameter $params

```