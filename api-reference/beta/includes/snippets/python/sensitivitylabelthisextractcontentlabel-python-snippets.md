---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.security.informationProtection.sensitivityLabels.microsoft.graph.security.extractContentLabel.extract_content_label_request_builder import ExtractContentLabelRequestBuilder
from msgraph.generated.models.extract_content_label_post_request_body import ExtractContentLabelPostRequestBody
from msgraph.generated.models.content_info import ContentInfo
from msgraph.generated.models.key_value_pair import KeyValuePair

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExtractContentLabelPostRequestBody(
	content_info = ContentInfo(
		identifier = "MyDoc.docx",
		state = ContentState.Rest,
		metadata = [
			KeyValuePair(
				name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Enabled",
				value = "True",
			),
			KeyValuePair(
				name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Method",
				value = "Standard",
			),
			KeyValuePair(
				name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SetDate",
				value = "1/1/0001 12:00:00 AM",
			),
			KeyValuePair(
				name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SiteId",
				value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			),
			KeyValuePair(
				name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Name",
				value = "LabelScopedToBob_Tests",
			),
			KeyValuePair(
				name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ContentBits",
				value = "0",
			),
			KeyValuePair(
				name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ActionId",
				value = "00000000-0000-0000-0000-000000000000",
			),
		],
		additional_data = {
				"format" : "default",
		}
	),
)

request_configuration = ExtractContentLabelRequestBuilder.ExtractContentLabelRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("User-Agent", "ContosoLOBApp/1.0")


result = await graph_client.users.by_user_id('user-id').security.information_protection.sensitivity_labels.microsoft_graph_security_extract_content_label.post(request_body, request_configuration = request_configuration)


```