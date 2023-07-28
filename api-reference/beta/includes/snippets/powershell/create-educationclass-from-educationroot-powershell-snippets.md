---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	description = "Health Level 1"
	classCode = "Health 501"
	displayName = "Health 1"
	externalId = "11019"
	externalName = "Health Level 1"
	externalSource = "sis"
	mailNickname = "fineartschool.net"
}

New-MgBetaEducationClass -BodyParameter $params

```