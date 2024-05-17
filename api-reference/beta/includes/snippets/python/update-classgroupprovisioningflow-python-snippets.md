---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.class_group_provisioning_flow import ClassGroupProvisioningFlow
from msgraph.generated.models.class_group_configuration import ClassGroupConfiguration
from msgraph.generated.models.additional_class_group_attributes import AdditionalClassGroupAttributes
from msgraph.generated.models.additional_class_group_options import AdditionalClassGroupOptions
from msgraph.generated.models.enrollment_mappings import EnrollmentMappings
from msgraph.generated.models.section_role_reference_value import SectionRoleReferenceValue

graph_client = GraphServiceClient(credentials, scopes)

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