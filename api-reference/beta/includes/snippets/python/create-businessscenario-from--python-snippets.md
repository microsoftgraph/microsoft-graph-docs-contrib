---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.business_scenario import BusinessScenario
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BusinessScenario(
	odata_type = "#microsoft.graph.businessScenario",
	display_name = "Contoso Order Tracking",
	unique_name = "com.contoso.apps.ordertracking",
)

result = await graph_client.solutions.business_scenarios.post(request_body)


```