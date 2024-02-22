---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.business_scenario import BusinessScenario

graph_client = GraphServiceClient(credentials, scopes)

request_body = BusinessScenario(
	odata_type = "#microsoft.graph.businessScenario",
	display_name = "Contoso Order Tracking",
	unique_name = "com.contoso.apps.ordertracking",
)

result = await graph_client.solutions.business_scenarios.post(request_body)


```