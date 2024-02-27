---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mail_folder import MailFolder

graph_client = GraphServiceClient(credentials, scopes)

request_body = MailFolder(
	display_name = "displayName-value",
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').patch(request_body)


```