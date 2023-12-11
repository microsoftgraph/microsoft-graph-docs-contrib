---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ComplianceManagementPartner(
	odata_type = "#microsoft.graph.complianceManagementPartner",
	last_heartbeat_date_time = "2016-12-31T23:59:37.9174975-08:00",
	partner_state = DeviceManagementPartnerTenantState.Unavailable,
	display_name = "Display Name value",
	mac_os_onboarded = True,
	android_onboarded = True,
	ios_onboarded = True,
	mac_os_enrollment_assignments = [
		ComplianceManagementPartnerAssignment(
			odata_type = "microsoft.graph.complianceManagementPartnerAssignment",
			target = ConfigurationManagerCollectionAssignmentTarget(
				odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				collection_id = "Collection Id value",
			),
		),
	],
	android_enrollment_assignments = [
		ComplianceManagementPartnerAssignment(
			odata_type = "microsoft.graph.complianceManagementPartnerAssignment",
			target = ConfigurationManagerCollectionAssignmentTarget(
				odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				collection_id = "Collection Id value",
			),
		),
	],
	ios_enrollment_assignments = [
		ComplianceManagementPartnerAssignment(
			odata_type = "microsoft.graph.complianceManagementPartnerAssignment",
			target = ConfigurationManagerCollectionAssignmentTarget(
				odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				collection_id = "Collection Id value",
			),
		),
	],
)

result = await graph_client.device_management.compliance_management_partners.by_compliance_management_partner_id('complianceManagementPartner-id').patch(request_body)


```