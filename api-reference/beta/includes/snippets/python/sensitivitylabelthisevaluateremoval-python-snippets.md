---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.security.information_protection.sensitivity_labels.microsoft.graph.security.evaluate_removal.evaluate_removal_request_builder import EvaluateRemovalRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.users.item.security.informationprotection.sensitivitylabels.microsoft_graph_security_evaluate_removal.evaluate_removal_post_request_body import EvaluateRemovalPostRequestBody
from msgraph_beta.generated.models.security.content_info import ContentInfo
from msgraph_beta.generated.models.content_state import ContentState
from msgraph_beta.generated.models.security.key_value_pair import KeyValuePair
from msgraph_beta.generated.models.security.downgrade_justification import DowngradeJustification
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EvaluateRemovalPostRequestBody(
	content_info = ContentInfo(
		odata_type = "#microsoft.graph.security.contentInfo",
		identifier = None,
		state = ContentState.Rest,
		metadata = [
			KeyValuePair(
				name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled",
				value = "True",
			),
			KeyValuePair(
				name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method",
				value = "Standard",
			),
			KeyValuePair(
				name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate",
				value = "1/1/0001 12:00:00 AM",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId",
				value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name",
				value = "LabelScopedToBob_Tests",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits",
				value = "0",
			),
			KeyValuePair(
				odata_type = "#microsoft.graph.security.keyValuePair",
				name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId",
				value = "00000000-0000-0000-0000-000000000000",
			),
		],
	),
	downgrade_justification = DowngradeJustification(
		justification_message = "The information has been declassified.",
		is_downgrade_justified = True,
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("User-Agent", "ContosoLOBApp/1.0")


result = await graph_client.users.by_user_id('user-id').security.information_protection.sensitivity_labels.microsoft_graph_security_evaluate_removal.post(request_body, request_configuration = request_configuration)


```