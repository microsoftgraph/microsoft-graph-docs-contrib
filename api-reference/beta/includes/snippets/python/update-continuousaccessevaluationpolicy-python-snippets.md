---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ContinuousAccessEvaluationPolicy(
	odata_type = "#microsoft.graph.continuousAccessEvaluationPolicy",
	migrate = True,
)

result = await graph_client.identity.continuou_acces_evaluation_policy.patch(body = request_body)


```