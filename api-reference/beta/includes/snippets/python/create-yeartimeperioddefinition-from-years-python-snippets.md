---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.year_time_period_definition import YearTimePeriodDefinition
from msgraph_beta.generated.models.industry_data.year_reference_value import YearReferenceValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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