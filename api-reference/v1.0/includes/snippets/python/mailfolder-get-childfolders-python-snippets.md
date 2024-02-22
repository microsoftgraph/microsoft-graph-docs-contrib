---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').child_folders.get()


```