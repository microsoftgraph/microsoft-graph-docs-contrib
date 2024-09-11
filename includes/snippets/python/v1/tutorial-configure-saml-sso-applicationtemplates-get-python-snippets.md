---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.application_templates.application_templates_request_builder import ApplicationTemplatesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ApplicationTemplatesRequestBuilder.ApplicationTemplatesRequestBuilderGetQueryParameters(
		filter = "displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.application_templates.get(request_configuration = request_configuration)


```