---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.rules.detection_rules.detection_rules_request_builder import DetectionRulesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DetectionRulesRequestBuilder.DetectionRulesRequestBuilderGetQueryParameters(
		top = 3,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.rules.detection_rules.get(request_configuration = request_configuration)


```