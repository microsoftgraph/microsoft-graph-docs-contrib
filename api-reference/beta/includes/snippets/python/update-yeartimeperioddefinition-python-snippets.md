---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = YearTimePeriodDefinition(
	display_name = "Fiscal Year 2022",
	id = "ebf18762-ab92-487e-21d1-08daddab28bb",
)

result = await graph_client.external.industry_data.years.by_year_time_period_definition_id('yearTimePeriodDefinition-id').patch(request_body)


```