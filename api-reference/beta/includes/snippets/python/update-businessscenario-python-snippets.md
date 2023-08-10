---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BusinessScenario()
request_body.OwnerAppIds(['44109254-4b2b-7a33-76ee-c890a167b295', '13eb9d8b-1d63-4153-9417-3a69ab200a78', ])




result = await client.solutions.busine_scenarios.by_busines_scenario_id('businessScenario-id').patch(request_body = request_body)


```