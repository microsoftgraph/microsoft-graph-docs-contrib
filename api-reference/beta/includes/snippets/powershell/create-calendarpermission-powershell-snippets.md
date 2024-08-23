---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	emailAddress = @{
		name = "Samantha Booth"
		address = "samanthab@contoso.com"
	}
	isInsideOrganization = $true
	isRemovable = $true
	role = "read"
}

New-MgBetaUserCalendarPermission -UserId $userId -BodyParameter $params

```