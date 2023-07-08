---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MailFoldersRequestBuilder.MailFoldersRequestBuilderGetQueryParameters(
		includeHiddenFolders = "true",
)

request_configuration = MailFoldersRequestBuilder.MailFoldersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.mail_folders.get(request_configuration = request_configuration)


```