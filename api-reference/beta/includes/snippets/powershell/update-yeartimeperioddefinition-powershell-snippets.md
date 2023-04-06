---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	DisplayName = "Fiscal Year 2022"
	Id = "ebf18762-ab92-487e-21d1-08daddab28bb"
}

Update-MgExternalIndustryDataYear -YearTimePeriodDefinitionId $yearTimePeriodDefinitionId -BodyParameter $params

```