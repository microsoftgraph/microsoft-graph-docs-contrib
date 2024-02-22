---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph.generated.models.access_package_resource import AccessPackageResource
from msgraph.generated.models.access_package_resource_attribute import AccessPackageResourceAttribute
from msgraph.generated.models.access_package_resource_attribute_question import AccessPackageResourceAttributeQuestion
from msgraph.generated.models.access_package_text_input_question import AccessPackageTextInputQuestion
from msgraph.generated.models.access_package_localized_content import AccessPackageLocalizedContent
from msgraph.generated.models.access_package_localized_text import AccessPackageLocalizedText
from msgraph.generated.models.access_package_user_directory_attribute_store import AccessPackageUserDirectoryAttributeStore

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRequest(
	catalog_id = "26ac0c0a-08bc-4a7b-a313-839f58044ba5",
	request_type = "AdminAdd",
	justification = "",
	access_package_resource = AccessPackageResource(
		display_name = "Faculty cafeteria ordering",
		description = "Example application",
		url = "https://myapps.microsoft.com/example.com/signin/Faculty%20cafeteria%20ordering/f1e3b407-942d-4934-9a3f-cef1975cb988/",
		resource_type = "Application",
		origin_id = "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e",
		origin_system = "AadApplication",
		attributes = [
			AccessPackageResourceAttribute(
				attribute_name = "extension_2b676109c7c74ae2b41549205f1947ed_personalTitle",
				is_editable = True,
				is_persisted_on_assignment_removal = True,
				attribute_source = AccessPackageResourceAttributeQuestion(
					odata_type = "#microsoft.graph.accessPackageResourceAttributeQuestion",
					question = AccessPackageTextInputQuestion(
						odata_type = "#microsoft.graph.accessPackageTextInputQuestion",
						is_required = False,
						sequence = 0,
						is_single_line_question = True,
						text = AccessPackageLocalizedContent(
							default_text = "Title",
							localized_texts = [
							],
						),
					),
				),
				attribute_destination = AccessPackageUserDirectoryAttributeStore(
					odata_type = "#microsoft.graph.accessPackageUserDirectoryAttributeStore",
				),
			),
		],
	),
)

result = await graph_client.identity_governance.entitlement_management.access_package_resource_requests.post(request_body)


```