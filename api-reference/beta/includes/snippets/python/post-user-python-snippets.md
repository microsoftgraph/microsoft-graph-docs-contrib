---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user_provisioning_flow import UserProvisioningFlow
from msgraph.generated.models.user_management_options import UserManagementOptions
from msgraph.generated.models.additional_user_attributes import AdditionalUserAttributes
from msgraph.generated.models.additional_user_options import AdditionalUserOptions
from msgraph.generated.models.user_creation_options import UserCreationOptions
from msgraph.generated.models.user_configuration import UserConfiguration
from msgraph.generated.models.simple_password_settings import SimplePasswordSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserProvisioningFlow(
	odata_type = "#microsoft.graph.industryData.userProvisioningFlow",
	create_unmatched_users = True,
	management_options = UserManagementOptions(
		additional_attributes = [
			AdditionalUserAttributes.UserGradeLevel,
		],
		additional_options = AdditionalUserOptions(
			mark_all_students_as_minors = True,
			allow_student_contact_association = False,
		),
	),
	creation_options = UserCreationOptions(
		configurations = [
			UserConfiguration(
				default_password_settings = SimplePasswordSettings(
					odata_type = "#microsoft.graph.industryData.simplePasswordSettings",
					password = "********",
				),
				license_skus = [
					"Sku1",
				],
				additional_data = {
						"role_group@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff",
				}
			),
			UserConfiguration(
				default_password_settings = SimplePasswordSettings(
					odata_type = "#microsoft.graph.industryData.simplePasswordSettings",
					password = "********",
				),
				license_skus = [
					"Sku2",
				],
				additional_data = {
						"role_group@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/students",
				}
			),
		],
	),
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.by_outbound_provisioning_flow_set_id('outboundProvisioningFlowSet-id').provisioning_flows.post(request_body)


```