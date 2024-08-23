---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.searches.item.microsoft_graph_security_purge_data.purge_data_post_request_body import PurgeDataPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = PurgeDataPostRequestBody(
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_ediscovery_search_id('ediscoverySearch-id').microsoft_graph_security_purge_data.post(request_body)


```