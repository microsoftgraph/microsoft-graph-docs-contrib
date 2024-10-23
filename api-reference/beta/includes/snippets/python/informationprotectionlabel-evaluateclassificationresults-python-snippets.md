---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.information_protection.policy.labels.evaluate_classification_results.evaluate_classification_results_request_builder import EvaluateClassificationResultsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.informationprotection.policy.labels.evaluate_classification_results.evaluate_classification_results_post_request_body import EvaluateClassificationResultsPostRequestBody
from msgraph_beta.generated.models.content_info import ContentInfo
from msgraph_beta.generated.models.content_format import ContentFormat
from msgraph_beta.generated.models.content_state import ContentState
from msgraph_beta.generated.models.classification_result import ClassificationResult
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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

request_configuration = RequestConfiguration()
request_configuration.headers.add("User-Agent", "ContosoLOBApp/1.0")


result = await graph_client.information_protection.policy.labels.evaluate_classification_results.post(request_body, request_configuration = request_configuration)


```