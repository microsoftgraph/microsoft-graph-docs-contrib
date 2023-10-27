---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').document_set_versions.by_document_set_version_id('documentSetVersion-id').get()


```