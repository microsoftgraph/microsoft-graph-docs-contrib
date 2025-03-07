---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.compliance.ediscovery.cases.item.source_collections.item.source_collection_item_request_builder import SourceCollectionItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = SourceCollectionItemRequestBuilder.SourceCollectionItemRequestBuilderGetQueryParameters(
		expand = ["addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.by_source_collection_id('sourceCollection-id').get(request_configuration = request_configuration)


```