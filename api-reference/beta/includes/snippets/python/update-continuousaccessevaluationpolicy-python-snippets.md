---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.continuous_access_evaluation_policy import ContinuousAccessEvaluationPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = ContinuousAccessEvaluationPolicy(
	odata_type = "#microsoft.graph.continuousAccessEvaluationPolicy",
	migrate = True,
)

result = await graph_client.identity.continuous_access_evaluation_policy.patch(request_body)


```