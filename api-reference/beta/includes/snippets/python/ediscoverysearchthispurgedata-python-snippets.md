---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.cases.ediscoverycases.item.searches.item.microsoft_graph_security_purge_data.purge_data_post_request_body import PurgeDataPostRequestBody
from msgraph_beta.generated.models.purge_type import PurgeType
from msgraph_beta.generated.models.purge_areas import PurgeAreas
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PurgeDataPostRequestBody(
	purge_type = PurgeType.Recoverable,
	purge_areas = PurgeAreas.TeamsMessages,
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_ediscovery_search_id('ediscoverySearch-id').microsoft_graph_security_purge_data.post(request_body)


```