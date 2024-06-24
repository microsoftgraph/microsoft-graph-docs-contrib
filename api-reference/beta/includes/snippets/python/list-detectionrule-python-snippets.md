---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.rules.detection_rules.detection_rules_request_builder import DetectionRulesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = DetectionRulesRequestBuilder.DetectionRulesRequestBuilderGetQueryParameters(
		top = 3,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.rules.detection_rules.get(request_configuration = request_configuration)


```