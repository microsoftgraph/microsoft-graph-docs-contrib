---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	emailAddress = @{
		name = "Samantha Booth"
		address = "samanthab@adatum.onmicrosoft.com"
	}
	isInsideOrganization = $true
	isRemovable = $true
	role = "read"
}

# A UPN can also be used as -UserId.
New-MgUserCalendarPermission -UserId $userId -BodyParameter $params

```