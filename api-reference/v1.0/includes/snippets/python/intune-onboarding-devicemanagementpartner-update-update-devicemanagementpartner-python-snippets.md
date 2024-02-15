---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_management_partner import DeviceManagementPartner
from msgraph.generated.models.device_management_partner_assignment import DeviceManagementPartnerAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceManagementPartner(
	odata_type = "#microsoft.graph.deviceManagementPartner",
	last_heartbeat_date_time = "2016-12-31T23:59:37.9174975-08:00",
	partner_state = DeviceManagementPartnerTenantState.Unavailable,
	partner_app_type = DeviceManagementPartnerAppType.SingleTenantApp,
	single_tenant_app_id = "Single Tenant App Id value",
	display_name = "Display Name value",
	is_configured = True,
	when_partner_devices_will_be_removed_date_time = "2016-12-31T23:56:38.2655023-08:00",
	when_partner_devices_will_be_marked_as_non_compliant_date_time = "2016-12-31T23:58:42.2131231-08:00",
	groups_requiring_partner_enrollment = [
		DeviceManagementPartnerAssignment(
			odata_type = "microsoft.graph.deviceManagementPartnerAssignment",
			target = ConfigurationManagerCollectionAssignmentTarget(
				odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				collection_id = "Collection Id value",
			),
		),
	],
)

result = await graph_client.device_management.device_management_partners.by_device_management_partner_id('deviceManagementPartner-id').patch(request_body)


```