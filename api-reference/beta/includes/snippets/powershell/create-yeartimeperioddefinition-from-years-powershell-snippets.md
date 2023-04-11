---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	DisplayName = "Fiscal Year 2022"
	EndDate = "2023-06-15"
	StartDate = "2022-09-01"
	Year = @{
		Code = "2022"
	}
}

New-MgExternalIndustryDataYear -BodyParameter $params

```