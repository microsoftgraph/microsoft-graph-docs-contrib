---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	emailAddress = @{
		name = "Samantha Booth"
		address = "samanthab@adatum.onmicrosoft.com"
	}
	isInsideOrganization = $true
	isRemovable = $true
	role = "read"
}

New-MgBetaUserCalendarPermission -UserId $userId -BodyParameter $params

```