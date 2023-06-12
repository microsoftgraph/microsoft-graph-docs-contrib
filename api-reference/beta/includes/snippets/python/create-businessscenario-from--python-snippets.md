---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BusinessScenario()
request_body.@odata_type = '#microsoft.graph.businessScenario'

request_body.display_name = 'Contoso Order Tracking'

request_body.unique_name = 'com.contoso.apps.ordertracking'




result = await client.solutions.busines_scenarios.post(request_body = request_body)


```