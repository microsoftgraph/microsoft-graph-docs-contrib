---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	Description = "Health Level 1"
	ClassCode = "Health 501"
	DisplayName = "Health 1"
	ExternalId = "11019"
	ExternalName = "Health Level 1"
	ExternalSource = "sis"
	MailNickname = "fineartschool.net"
}

New-MgEducationClass -BodyParameter $params

```