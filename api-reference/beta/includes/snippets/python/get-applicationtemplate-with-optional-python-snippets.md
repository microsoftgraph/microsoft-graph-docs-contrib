---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.application_templates.item.application_template_item_request_builder import ApplicationTemplateItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ApplicationTemplateItemRequestBuilder.ApplicationTemplateItemRequestBuilderGetQueryParameters(
		select = ["id","displayName","riskScore","riskFactors"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.application_templates.by_application_template_id('applicationTemplate-id').get(request_configuration = request_configuration)


```