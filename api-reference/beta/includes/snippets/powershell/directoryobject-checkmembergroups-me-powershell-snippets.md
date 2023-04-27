---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	groupIds = @(
		"fee2c45b-915a-4a64-b130-f4eb9e75525e"
		"4fe90ae7-065a-478b-9400-e0a0e1cbd540"
	)
}

# A UPN can also be used as -UserId.
Confirm-MgUserMemberGroup -UserId $userId -BodyParameter $params

```