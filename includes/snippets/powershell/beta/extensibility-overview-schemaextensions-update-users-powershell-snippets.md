---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	extkmpdyld2_graphLearnCourses = @{
		courseType = "Instructor-led"
		courseId = $null
	}
}

Update-MgBetaUser -UserId $userId -BodyParameter $params

```