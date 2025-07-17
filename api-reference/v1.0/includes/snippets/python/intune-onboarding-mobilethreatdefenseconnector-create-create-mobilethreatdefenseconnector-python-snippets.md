---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.mobile_threat_defense_connector import MobileThreatDefenseConnector
from msgraph.generated.models.mobile_threat_partner_tenant_state import MobileThreatPartnerTenantState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MobileThreatDefenseConnector(
	odata_type = "#microsoft.graph.mobileThreatDefenseConnector",
	last_heartbeat_date_time = "2016-12-31T23:59:37.9174975-08:00",
	partner_state = MobileThreatPartnerTenantState.Available,
	android_mobile_application_management_enabled = True,
	ios_mobile_application_management_enabled = True,
	android_enabled = True,
	ios_enabled = True,
	windows_enabled = True,
	android_device_blocked_on_missing_partner_data = True,
	ios_device_blocked_on_missing_partner_data = True,
	windows_device_blocked_on_missing_partner_data = True,
	partner_unsupported_os_version_blocked = True,
	partner_unresponsiveness_threshold_in_days = 6,
	allow_partner_to_collect_i_o_s_application_metadata = True,
	allow_partner_to_collect_i_o_s_personal_application_metadata = True,
	microsoft_defender_for_endpoint_attach_enabled = True,
)

result = await graph_client.device_management.mobile_threat_defense_connectors.post(request_body)


```