---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.informationProtection.policy.labels.evaluateApplication.evaluate_application_request_builder import EvaluateApplicationRequestBuilder
from msgraph.generated.models.evaluate_application_post_request_body import EvaluateApplicationPostRequestBody
from msgraph.generated.models.content_info import ContentInfo
from msgraph.generated.models.key_value_pair import KeyValuePair
from msgraph.generated.models.labeling_options import LabelingOptions

graph_client = GraphServiceClient(credentials, scopes)

request_body = EvaluateApplicationPostRequestBody(
	content_info = ContentInfo(
		odata_type = "#microsoft.graph.contentInfo",
		format = ContentFormat.Default,
		identifier = None,
		state = ContentState.Rest,
		metadata = [
			KeyValuePair(
				odata_type = "#microsoft.graph.keyValuePair",
				name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Enabled",
				value = "True",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.keyValuePair",
				name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Method",
				value = "Standard",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.keyValuePair",
				name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SetDate",
				value = "1/1/0001 12:00:00 AM",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.keyValuePair",
				name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SiteId",
				value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.keyValuePair",
				name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Name",
				value = "General",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.keyValuePair",
				name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ContentBits",
				value = "0",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.keyValuePair",
				name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ActionId",
				value = "00000000-0000-0000-0000-000000000000",
			),
		],
		additional_data = {
				"format@odata_type" : "#microsoft.graph.contentFormat",
				"state@odata_type" : "#microsoft.graph.contentState",
				"metadata@odata_type" : "#Collection(microsoft.graph.keyValuePair)",
		}
	),
	labeling_options = LabelingOptions(
		odata_type = "#microsoft.graph.labelingOptions",
		assignment_method = AssignmentMethod.Standard,
		label_id = "97309856-9c28-4ac6-9382-5f8bc20c457b",
		downgrade_justification = None,
		extended_properties = [
		],
		additional_data = {
				"assignment_method@odata_type" : "#microsoft.graph.assignmentMethod",
				"label_id@odata_type" : "#Guid",
				"extended_properties@odata_type" : "#Collection(microsoft.graph.keyValuePair)",
		}
	),
)

request_configuration = EvaluateApplicationRequestBuilder.EvaluateApplicationRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("User-Agent", "ContosoLOBApp/1.0")


result = await graph_client.information_protection.policy.labels.evaluate_application.post(request_body, request_configuration = request_configuration)


```