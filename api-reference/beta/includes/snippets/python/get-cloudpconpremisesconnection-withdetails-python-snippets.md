---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = CloudPcOnPremisesConnectionRequestBuilder.CloudPcOnPremisesConnectionRequestBuilderGetQueryParameters(
		select = ["id","displayName","healthCheckStatus","healthCheckStatusDetails","inUse"],
)

request_configuration = CloudPcOnPremisesConnectionRequestBuilder.CloudPcOnPremisesConnectionRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.on_premise_connections.by_on_premise_connection_id('cloudPcOnPremisesConnection-id').get(request_configuration = request_configuration)


```