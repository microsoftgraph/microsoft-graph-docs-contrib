---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	memberId = "319b41e8-d9e4-42f8-bdc9-741113f48b33"
	membershipRule = "(user.displayName -startsWith "EndTestUser")"
}

Test-MgGroupDynamicMembershipRule -BodyParameter $params

```