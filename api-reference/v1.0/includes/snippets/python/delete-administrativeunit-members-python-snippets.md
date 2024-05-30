---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.directory.administrative_units.by_administrative_unit_id('administrativeUnit-id').members.by_directory_object_id('directoryObject-id').ref.delete()


```