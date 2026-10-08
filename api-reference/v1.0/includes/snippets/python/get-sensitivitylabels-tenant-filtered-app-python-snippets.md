---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.data_security_and_governance.sensitivity_labels.sensitivity_labels_request_builder import SensitivityLabelsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = SensitivityLabelsRequestBuilder.SensitivityLabelsRequestBuilderGetQueryParameters(
		filter = "applicableTo has 'file' and id in ('4e4234dd-377b-42a3-935b-0e42f138fa23','b7a21bba-8197-491f-a5d6-0d0f955397ca')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("Authorization", "Bearer {token}")
request_configuration.headers.add("Client-Request-Id", "a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5")


result = await graph_client.security.data_security_and_governance.sensitivity_labels.get(request_configuration = request_configuration)


```