---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.compliance.ediscovery.cases.item.tags.item.tag_item_request_builder import TagItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = TagItemRequestBuilder.TagItemRequestBuilderDeleteQueryParameters(
		forcedelete = "true",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.compliance.ediscovery.cases.by_case_id('case-id').tags.by_tag_id('tag-id').delete(request_configuration = request_configuration)


```