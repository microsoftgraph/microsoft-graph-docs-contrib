---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetQueryParameters(
		search = "\"displayName:Web\"",
		count = True,
		select = ["appId","identifierUris","displayName","publisherDomain","signInAudience"],
)

request_configuration = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)

result = await graph_client.applications.get(request_configuration = request_configuration)


```