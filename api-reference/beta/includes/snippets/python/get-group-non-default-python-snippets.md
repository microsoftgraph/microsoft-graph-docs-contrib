---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = GroupRequestBuilder.GroupRequestBuilderGetQueryParameters(
		select = ["allowExternalSenders","autoSubscribeNewMembers","isSubscribedByMail","unseenCount"],
)

request_configuration = GroupRequestBuilder.GroupRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.groups.by_group_id('group-id').get(request_configuration = request_configuration)


```