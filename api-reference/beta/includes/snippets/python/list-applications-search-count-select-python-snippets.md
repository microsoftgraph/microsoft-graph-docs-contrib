---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetQueryParameters(
		search = "\"displayName:Web\"",
		count = true,
		select = ["appId","identifierUris","displayName","publisherDomain","signInAudience"],
)

request_configuration = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)


result = await client.applications.get(request_configuration = request_configuration)


```