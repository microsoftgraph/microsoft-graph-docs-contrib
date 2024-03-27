---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.applications.by_application_id('application-id').owners.by_directory_object_id('directoryObject-id').ref.delete()


```