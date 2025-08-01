---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.searches.item.microsoft_graph_security_estimate_statistics.estimate_statistics_post_request_body import EstimateStatisticsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EstimateStatisticsPostRequestBody(
	additional_data = {
			"statistics_options" : "includeRefiners, includeQueryStats, includeUnindexedStats, advancedIndexing, locationsWithoutHits",
	}
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_ediscovery_search_id('ediscoverySearch-id').microsoft_graph_security_estimate_statistics.post(request_body)


```