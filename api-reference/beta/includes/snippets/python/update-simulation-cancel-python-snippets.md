---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Simulation()
request_body.id = '2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc'

request_body.status(SimulationStatus.Cancelled('simulationstatus.cancelled'))

additional_data = [
'@odata_etag' => '\"0100aa9b-0000-0100-0000-6396fa270000\"', 
];
request_body.additional_data(additional_data)





result = await client.security.attack_simulation.simulations.by_simulation_id('simulation-id').patch(request_body = request_body)


```