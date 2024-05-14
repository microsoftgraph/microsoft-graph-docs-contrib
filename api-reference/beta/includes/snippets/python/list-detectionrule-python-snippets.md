---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.rules.detection_rules.detection_rules_request_builder import DetectionRulesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DetectionRulesRequestBuilder.DetectionRulesRequestBuilderGetQueryParameters(
		top = 3,
)

request_configuration = DetectionRulesRequestBuilder.DetectionRulesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.rules.detection_rules.get(request_configuration = request_configuration)


```