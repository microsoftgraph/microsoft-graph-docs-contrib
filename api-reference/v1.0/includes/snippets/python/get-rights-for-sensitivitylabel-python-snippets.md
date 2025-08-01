---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.data_security_and_governance.sensitivity_labels.item.rights.rights_request_builder import RightsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RightsRequestBuilder.RightsRequestBuilderGetQueryParameters(
		owner_email = "bob@contoso.com",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("Authorization", "Bearer {token}")
request_configuration.headers.add("Client-Request-Id", "7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a")


result = await graph_client.security.data_security_and_governance.sensitivity_labels.by_sensitivity_label_id('sensitivityLabel-id').rights.get(request_configuration = request_configuration)


```