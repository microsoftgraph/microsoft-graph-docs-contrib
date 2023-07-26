---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
		orderby = ["from/emailAddress/name desc","subject"],
)

request_configuration = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.mail_folders.by_mail_folder_id('mailFolder-id').messages.get(request_configuration = request_configuration)


```