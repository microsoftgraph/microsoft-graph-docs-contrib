---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.user_provisioning_flow import UserProvisioningFlow
from msgraph_beta.generated.models.industry_data.user_management_options import UserManagementOptions
from msgraph_beta.generated.models.industry_data.additional_user_attributes import AdditionalUserAttributes
from msgraph_beta.generated.models.additional_user_attributes import AdditionalUserAttributes
from msgraph_beta.generated.models.industry_data.additional_user_options import AdditionalUserOptions
from msgraph_beta.generated.models.student_age_group import StudentAgeGroup
from msgraph_beta.generated.models.industry_data.user_creation_options import UserCreationOptions
from msgraph_beta.generated.models.industry_data.user_configuration import UserConfiguration
from msgraph_beta.generated.models.industry_data.simple_password_settings import SimplePasswordSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UserProvisioningFlow(
	odata_type = "#microsoft.graph.industryData.userProvisioningFlow",
	create_unmatched_users = True,
	management_options = UserManagementOptions(
		additional_attributes = [
			AdditionalUserAttributes.UserGradeLevel,
		],
		additional_options = AdditionalUserOptions(
			student_age_group = StudentAgeGroup.Minor,
			allow_student_contact_association = True,
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
					"SkuUpdated",
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
					"SkuUpdated2",
				],
				additional_data = {
						"role_group@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/students",
				}
			),
		],
	),
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.by_outbound_provisioning_flow_set_id('outboundProvisioningFlowSet-id').provisioning_flows.by_provisioning_flow_id('provisioningFlow-id').patch(request_body)


```