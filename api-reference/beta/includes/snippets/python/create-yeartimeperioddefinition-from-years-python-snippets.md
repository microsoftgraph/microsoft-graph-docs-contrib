---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.year_time_period_definition import YearTimePeriodDefinition
from msgraph.generated.models.year_reference_value import YearReferenceValue

graph_client = GraphServiceClient(credentials, scopes)

request_body = YearTimePeriodDefinition(
	display_name = "Fiscal Year 2022",
	end_date = "2023-06-15",
	start_date = "2022-09-01",
	year = YearReferenceValue(
		code = "2022",
	),
)

result = await graph_client.external.industry_data.years.post(request_body)


```