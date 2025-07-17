---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.year_time_period_definition import YearTimePeriodDefinition
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = YearTimePeriodDefinition(
	display_name = "Fiscal Year 2022",
	id = "ebf18762-ab92-487e-21d1-08daddab28bb",
)

result = await graph_client.external.industry_data.years.by_year_time_period_definition_id('yearTimePeriodDefinition-id').patch(request_body)


```