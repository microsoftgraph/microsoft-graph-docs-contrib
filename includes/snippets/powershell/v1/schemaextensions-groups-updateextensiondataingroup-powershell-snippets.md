---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	bellowscollege_courses = @{
		courseId = "123"
		courseName = "New Managers"
		courseType = "Hybrid"
	}
}

Update-MgGroup -GroupId $groupId -BodyParameter $params

```