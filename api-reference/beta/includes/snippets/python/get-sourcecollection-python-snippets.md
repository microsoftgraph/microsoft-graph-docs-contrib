---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.compliance.ediscovery.cases.item.sourceCollections.item.source_collection_item_request_builder import SourceCollectionItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = SourceCollectionItemRequestBuilder.SourceCollectionItemRequestBuilderGetQueryParameters(
		expand = ["addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"],
)

request_configuration = SourceCollectionItemRequestBuilder.SourceCollectionItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.by_source_collection_id('sourceCollection-id').get(request_configuration = request_configuration)


```