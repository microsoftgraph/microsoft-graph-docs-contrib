---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.conditionalAccess.templates.item.conditional_access_template_item_request_builder import ConditionalAccessTemplateItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ConditionalAccessTemplateItemRequestBuilder.ConditionalAccessTemplateItemRequestBuilderGetQueryParameters(
		select = ["details"],
)

request_configuration = ConditionalAccessTemplateItemRequestBuilder.ConditionalAccessTemplateItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.conditional_access.templates.by_conditional_access_template_id('conditionalAccessTemplate-id').get(request_configuration = request_configuration)


```