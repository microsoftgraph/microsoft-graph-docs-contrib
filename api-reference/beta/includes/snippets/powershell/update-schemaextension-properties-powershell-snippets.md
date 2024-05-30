---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	ext55gb1l09_msLearnCourses = @{
		courseType = "Admin"
	}
}

Update-MgBetaUser -UserId $userId -BodyParameter $params

```