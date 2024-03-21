---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').noncustodial_data_sources.by_ediscovery_noncustodial_data_source_id('ediscoveryNoncustodialDataSource-id').microsoft_graph_security_apply_hold.post()


```