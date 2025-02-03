---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	ext55gb1l09_msLearnCourses = @{
		courseType = "Admin"
	}
}

Update-MgUser -UserId $userId -BodyParameter $params

```