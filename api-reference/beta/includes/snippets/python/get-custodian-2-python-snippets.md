---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').custodians.by_custodian_id('custodian-id').get()


```