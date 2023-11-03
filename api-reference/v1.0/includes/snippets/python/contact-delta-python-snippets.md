---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		select = ["displayName"],
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'Prefer' : "odata.maxpagesize=2",
}

)

result = await graph_client.me.contact_folders.by_contact_folder_id('contactFolder-id').contacts.delta.get(request_configuration = request_configuration)


```