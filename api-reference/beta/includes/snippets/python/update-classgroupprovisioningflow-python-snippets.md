---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.class_group_provisioning_flow import ClassGroupProvisioningFlow
from msgraph_beta.generated.models.industry_data.class_group_configuration import ClassGroupConfiguration
from msgraph_beta.generated.models.industry_data.additional_class_group_attributes import AdditionalClassGroupAttributes
from msgraph_beta.generated.models.additional_class_group_attributes import AdditionalClassGroupAttributes
from msgraph_beta.generated.models.industry_data.additional_class_group_options import AdditionalClassGroupOptions
from msgraph_beta.generated.models.industry_data.enrollment_mappings import EnrollmentMappings
from msgraph_beta.generated.models.industry_data.section_role_reference_value import SectionRoleReferenceValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ClassGroupProvisioningFlow(
	odata_type = "#microsoft.graph.industryData.classGroupProvisioningFlow",
	configuration = ClassGroupConfiguration(
		odata_type = "#microsoft.graph.industryData.classGroupConfiguration",
		additional_attributes = [
			AdditionalClassGroupAttributes.CourseTitle,
			AdditionalClassGroupAttributes.CourseCode,
		],
		additional_options = AdditionalClassGroupOptions(
			odata_type = "#microsoft.graph.industryData.additionalClassGroupOptions",
			create_team = False,
			write_display_name_on_create_only = False,
		),
		enrollment_mappings = EnrollmentMappings(
			odata_type = "#microsoft.graph.industryData.enrollmentMappings",
			member_enrollment_mappings = [
				SectionRoleReferenceValue(
					odata_type = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					code = "substitute",
				),
			],
			owner_enrollment_mappings = [
				SectionRoleReferenceValue(
					odata_type = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					code = "teacher",
				),
			],
		),
	),
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.by_outbound_provisioning_flow_set_id('outboundProvisioningFlowSet-id').provisioning_flows.by_provisioning_flow_id('provisioningFlow-id').patch(request_body)


```