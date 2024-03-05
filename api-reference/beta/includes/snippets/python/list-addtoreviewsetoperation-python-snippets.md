---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.by_source_collection_id('sourceCollection-id').add_to_review_set_operation.get()


```