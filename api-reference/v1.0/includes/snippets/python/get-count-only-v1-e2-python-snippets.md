---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = CountRequestBuilder.CountRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("ConsistencyLevel", "eventual")


await graph_client.applications.count.get(request_configuration = request_configuration)


```