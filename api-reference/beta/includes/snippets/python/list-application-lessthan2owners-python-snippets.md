---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetQueryParameters(
		filter = "owners/$count eq 0 or owners/$count eq 1",
		count = true,
		select = ["id","displayName"],
)

request_configuration = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)


result = await client.applications.get(request_configuration = request_configuration)


```