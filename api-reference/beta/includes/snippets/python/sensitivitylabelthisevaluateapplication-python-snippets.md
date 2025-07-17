---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.security.information_protection.sensitivity_labels.microsoft.graph.security.evaluate_application.evaluate_application_request_builder import EvaluateApplicationRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.users.item.security.informationprotection.sensitivitylabels.microsoft_graph_security_evaluate_application.evaluate_application_post_request_body import EvaluateApplicationPostRequestBody
from msgraph_beta.generated.models.security.content_info import ContentInfo
from msgraph_beta.generated.models.content_state import ContentState
from msgraph_beta.generated.models.security.key_value_pair import KeyValuePair
from msgraph_beta.generated.models.security.labeling_options import LabelingOptions
from msgraph_beta.generated.models.assignment_method import AssignmentMethod
from msgraph_beta.generated.models.security.downgrade_justification import DowngradeJustification
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EvaluateApplicationPostRequestBody(
	content_info = ContentInfo(
		odata_type = "#microsoft.graph.security.contentInfo",
		content_format = "File",
		identifier = None,
		state = ContentState.Rest,
		metadata = [
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Enabled",
				value = "True",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Method",
				value = "Standard",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SetDate",
				value = "1/1/0001 12:00:00 AM",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SiteId",
				value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Name",
				value = "LabelScopedToBob_Tests",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ContentBits",
				value = "0",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ActionId",
				value = "00000000-0000-0000-0000-000000000000",
			),
		],
		additional_data = {
				"format@odata_type" : "#microsoft.graph.security.contentFormat",
				"format" : "default",
				"state@odata_type" : "#microsoft.graph.security.contentState",
				"metadata@odata_type" : "#Collection(microsoft.graph.security.keyValuePair)",
		}
	),
	labeling_options = LabelingOptions(
		odata_type = "#microsoft.graph.security.labelingOptions",
		assignment_method = AssignmentMethod.Standard,
		label_id = "836ff34f-b604-4a62-a68c-d6be4205d569",
		downgrade_justification = DowngradeJustification(
			justification_message = "Justified",
			is_downgrade_justified = True,
		),
		extended_properties = [
		],
		additional_data = {
				"assignment_method@odata_type" : "#microsoft.graph.security.assignmentMethod",
				"label_id@odata_type" : "#Guid",
				"extended_properties@odata_type" : "#Collection(microsoft.graph.security.keyValuePair)",
		}
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("User-Agent", "ContosoLobApp/1.0")


result = await graph_client.users.by_user_id('user-id').security.information_protection.sensitivity_labels.microsoft_graph_security_evaluate_application.post(request_body, request_configuration = request_configuration)


```