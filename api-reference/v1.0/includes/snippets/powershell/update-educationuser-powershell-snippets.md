---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	displayName = "Rogelio Cazares"
	givenName = "Rogelio"
	middleName = "Fernando"
	surname = "Cazares"
}

Update-MgEducationUser -EducationUserId $educationUserId -BodyParameter $params

```