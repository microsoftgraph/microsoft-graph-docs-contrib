---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.security.informationProtection.sensitivityLabels.microsoft.graph.security.evaluateClassificationResults.evaluate_classification_results_request_builder import EvaluateClassificationResultsRequestBuilder
from msgraph.generated.models.evaluate_classification_results_post_request_body import EvaluateClassificationResultsPostRequestBody
from msgraph.generated.models.content_info import ContentInfo
from msgraph.generated.models.key_value_pair import KeyValuePair
from msgraph.generated.models.classification_result import ClassificationResult

graph_client = GraphServiceClient(credentials, scopes)

request_body = EvaluateClassificationResultsPostRequestBody(
	content_info = ContentInfo(
		odata_type = "#microsoft.graph.security.contentInfo",
		content_format = "File",
		identifier = "c:\user\new.docx",
		state = ContentState.Rest,
		metadata = [
		],
		additional_data = {
				"format@odata_type" : "#microsoft.graph.security.contentFormat",
				"format" : "default",
				"state@odata_type" : "#microsoft.graph.security.contentState",
		}
	),
	classification_results = [
		ClassificationResult(
			sensitive_type_id = "50842eb7-edc8-4019-85dd-5a5c1f2bb085",
			count = 7,
			confidence_level = 99,
		),
	],
)

request_configuration = EvaluateClassificationResultsRequestBuilder.EvaluateClassificationResultsRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("User-Agent", "ContosoLOBApp/1.0")


result = await graph_client.users.by_user_id('user-id').security.information_protection.sensitivity_labels.microsoft_graph_security_evaluate_classification_results.post(request_body, request_configuration = request_configuration)


```