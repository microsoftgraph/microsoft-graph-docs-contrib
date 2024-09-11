---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.mail_folder import MailFolder
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MailFolder(
	display_name = "displayName-value",
	is_hidden = True,
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').child_folders.post(request_body)


```