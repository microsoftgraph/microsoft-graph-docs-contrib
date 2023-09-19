---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BusinessScenario(
	odata_type = "#microsoft.graph.businessScenario",
	display_name = "Contoso Order Tracking",
	unique_name = "com.contoso.apps.ordertracking",
)

result = await graph_client.solutions.busines_scenarios.post(body = request_body)


```