---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph.generated.models.access_package_resource import AccessPackageResource
from msgraph.generated.models.access_package_resource_attribute import AccessPackageResourceAttribute
from msgraph.generated.models.access_package_user_directory_attribute_store import AccessPackageUserDirectoryAttributeStore
from msgraph.generated.models.access_package_resource_attribute_question import AccessPackageResourceAttributeQuestion
from msgraph.generated.models.access_package_text_input_question import AccessPackageTextInputQuestion
from msgraph.generated.models.access_package_catalog import AccessPackageCatalog

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRequest(
	request_type = AccessPackageRequestType.AdminUpdate,
	resource = AccessPackageResource(
		origin_id = "e81d7f57-0840-45e1-894b-f505c1bdcc1f",
		origin_system = "AadApplication",
		attributes = [
			AccessPackageResourceAttribute(
				destination = AccessPackageUserDirectoryAttributeStore(
					odata_type = "microsoft.graph.accessPackageUserDirectoryAttributeStore",
				),
				name = "officeLocation",
				source = AccessPackageResourceAttributeQuestion(
					odata_type = "#microsoft.graph.accessPackageResourceAttributeQuestion",
					question = AccessPackageTextInputQuestion(
						odata_type = "#microsoft.graph.accessPackageTextInputQuestion",
						sequence = 1,
						is_required = True,
						is_answer_editable = True,
						text = "What office do you work at?",
						is_single_line_question = True,
						regex_pattern = "[a-zA-Z]+[a-zA-Z\s]*",
					),
				),
			),
			AccessPackageResourceAttribute(
				destination = AccessPackageUserDirectoryAttributeStore(
					odata_type = "microsoft.graph.accessPackageUserDirectoryAttributeStore",
				),
				name = "extension_e409fedc08ab4807a9eb53ebc0d6cc9f_Expense_CostCenter",
				source = AccessPackageResourceAttributeQuestion(
					odata_type = "#microsoft.graph.accessPackageResourceAttributeQuestion",
					question = AccessPackageTextInputQuestion(
						odata_type = "#microsoft.graph.accessPackageTextInputQuestion",
						is_required = False,
						text = "What is your cost center number?",
						sequence = 0,
						is_single_line_question = True,
						regex_pattern = "[0-9]*",
					),
				),
			),
		],
	),
	catalog = AccessPackageCatalog(
		id = "beedadfe-01d5-4025-910b-84abb9369997",
	),
)

result = await graph_client.identity_governance.entitlement_management.resource_requests.post(request_body)


```