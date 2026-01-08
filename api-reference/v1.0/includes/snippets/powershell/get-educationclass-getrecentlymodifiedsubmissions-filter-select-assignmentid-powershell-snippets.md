---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

Get-MgEducationClassRecentlyModifiedSubmission -EducationClassId $educationClassId -Filter "assignmentId eq 'b20d6737-f88e-4892-8174-73aa26d18784'" -Property "LastModifiedDateTime,status" 

```