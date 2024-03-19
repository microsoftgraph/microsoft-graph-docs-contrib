---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_compliance_user_status import DeviceComplianceUserStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceComplianceUserStatus(
	odata_type = "#microsoft.graph.deviceComplianceUserStatus",
	user_display_name = "User Display Name value",
	devices_count = 12,
	status = ComplianceStatus.NotApplicable,
	last_reported_date_time = "2017-01-01T00:00:17.7769392-08:00",
	user_principal_name = "User Principal Name value",
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').user_statuses.post(request_body)


```