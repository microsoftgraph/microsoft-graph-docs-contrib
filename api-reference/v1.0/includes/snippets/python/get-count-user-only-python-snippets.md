---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)


request_configuration = CountRequestBuilder.CountRequestBuilderGetRequestConfiguration(
headers = {
		'ConsistencyLevel' : "eventual",
}

)


await client.groups.by_group_id('group-id').members.graph_user.count.get(request_configuration = request_configuration)


```