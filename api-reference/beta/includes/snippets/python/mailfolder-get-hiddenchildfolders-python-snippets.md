---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ChildFoldersRequestBuilder.ChildFoldersRequestBuilderGetQueryParameters(
		includeHiddenFolders = "true",
)

request_configuration = ChildFoldersRequestBuilder.ChildFoldersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.mail_folders.by_mail_folder_id('mailFolder-id').child_folders.get(request_configuration = request_configuration)


```