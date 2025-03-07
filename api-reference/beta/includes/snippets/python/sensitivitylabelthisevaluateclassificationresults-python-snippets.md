---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.security.information_protection.sensitivity_labels.microsoft.graph.security.evaluate_classification_results.evaluate_classification_results_request_builder import EvaluateClassificationResultsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.users.item.security.informationprotection.sensitivitylabels.microsoft_graph_security_evaluate_classification_results.evaluate_classification_results_post_request_body import EvaluateClassificationResultsPostRequestBody
from msgraph_beta.generated.models.security.content_info import ContentInfo
from msgraph_beta.generated.models.content_state import ContentState
from msgraph_beta.generated.models.security.key_value_pair import KeyValuePair
from msgraph_beta.generated.models.security.classification_result import ClassificationResult
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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

request_configuration = RequestConfiguration()
request_configuration.headers.add("User-Agent", "ContosoLOBApp/1.0")


result = await graph_client.users.by_user_id('user-id').security.information_protection.sensitivity_labels.microsoft_graph_security_evaluate_classification_results.post(request_body, request_configuration = request_configuration)


```