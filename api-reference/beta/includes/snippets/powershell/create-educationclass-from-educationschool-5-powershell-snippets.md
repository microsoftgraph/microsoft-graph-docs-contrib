---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/education/classes/11006"
}

New-MgEducationSchoolClassByRef -EducationSchoolId $educationSchoolId -BodyParameter $params

```