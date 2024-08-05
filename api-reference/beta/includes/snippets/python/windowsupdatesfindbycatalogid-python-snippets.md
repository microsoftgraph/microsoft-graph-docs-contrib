---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.windows.updates.products.microsoft.graph.windows_updates.find_by_catalog_id(catalog_i_d='{catalog_i_d}').find_by_catalog_id_with_catalog_i_d_request_builder import FindByCatalogIdWithCatalogIDRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = FindByCatalogIdWithCatalogIDRequestBuilder.FindByCatalogIdWithCatalogIDRequestBuilderGetQueryParameters(
		expand = ["revisions($expand=catalogEntry,knowledgeBaseArticle)","knownIssues($expand=originatingKnowledgeBaseArticle,resolvingKnowledgeBaseArticle)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.windows.updates.products.microsoft_graph_windows_updates_find_by_catalog_id_with_catalog_i_d("{catalogID}").get(request_configuration = request_configuration)


```