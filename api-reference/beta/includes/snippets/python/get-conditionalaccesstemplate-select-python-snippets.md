---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.conditional_access.templates.item.conditional_access_template_item_request_builder import ConditionalAccessTemplateItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ConditionalAccessTemplateItemRequestBuilder.ConditionalAccessTemplateItemRequestBuilderGetQueryParameters(
		select = ["details"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.conditional_access.templates.by_conditional_access_template_id('conditionalAccessTemplate-id').get(request_configuration = request_configuration)


```