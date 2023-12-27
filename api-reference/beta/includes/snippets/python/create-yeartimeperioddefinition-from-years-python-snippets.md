---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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