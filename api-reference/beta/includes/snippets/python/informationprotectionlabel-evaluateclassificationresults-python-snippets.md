---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EvaluateClassificationResultsPostRequestBody(
	content_info = ContentInfo(
		odata_type = "#microsoft.graph.contentInfo",
		format = ContentFormat.Default,
		identifier = None,
		state = ContentState.Rest,
		additional_data = {
				"format@odata_type" : "#microsoft.graph.contentFormat",
				"state@odata_type" : "#microsoft.graph.contentState",
		}
	),
	classification_results = [
		ClassificationResult(
			sensitive_type_id = "cb353f78-2b72-4c3c-8827-92ebe4f69fdf",
			count = 4,
			confidence_level = 75,
		),
	],
)

request_configuration = EvaluateClassificationResultsRequestBuilder.EvaluateClassificationResultsRequestBuilderPostRequestConfiguration(
headers = {
		'User-Agent' : "ContosoLOBApp/1.0",
}

)

result = await graph_client.information_protection.policy.labels.evaluate_classification_results.post(request_body, request_configuration = request_configuration)


```