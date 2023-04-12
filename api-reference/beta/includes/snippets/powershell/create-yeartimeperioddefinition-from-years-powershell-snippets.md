---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	displayName = "Fiscal Year 2022"
	endDate = "2023-06-15"
	startDate = "2022-09-01"
	year = @{
		code = "2022"
	}
}

New-MgExternalIndustryDataYear -BodyParameter $params

```