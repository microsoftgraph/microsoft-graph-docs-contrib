---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.mail_folder import MailFolder

graph_client = GraphServiceClient(credentials, scopes)

request_body = MailFolder(
	display_name = "Clutter",
	is_hidden = True,
)

result = await graph_client.me.mail_folders.post(request_body)


```