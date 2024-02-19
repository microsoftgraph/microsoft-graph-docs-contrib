---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.source_collection import SourceCollection

graph_client = GraphServiceClient(credentials, scopes)

request_body = SourceCollection(
	display_name = "Quarterly Financials search",
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.by_source_collection_id('sourceCollection-id').patch(request_body)


```