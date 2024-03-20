---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.directory_roles.by_directory_role_id('directoryRole-id').members.by_directory_object_id('directoryObject-id').ref.delete()


```