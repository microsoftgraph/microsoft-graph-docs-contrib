---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.simulation import Simulation

graph_client = GraphServiceClient(credentials, scopes)

request_body = Simulation(
	id = "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
	status = SimulationStatus.Excluded,
	additional_data = {
			"@odata_etag" : "\"0100aa9b-0000-0100-0000-6396fa270000\"",
	}
)

result = await graph_client.security.attack_simulation.simulations.by_simulation_id('simulation-id').patch(request_body)


```