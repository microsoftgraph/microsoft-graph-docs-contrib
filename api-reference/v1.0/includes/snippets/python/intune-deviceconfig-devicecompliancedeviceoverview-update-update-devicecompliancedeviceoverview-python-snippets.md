---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_compliance_device_overview import DeviceComplianceDeviceOverview

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceComplianceDeviceOverview(
	odata_type = "#microsoft.graph.deviceComplianceDeviceOverview",
	pending_count = 12,
	not_applicable_count = 2,
	success_count = 12,
	error_count = 10,
	failed_count = 11,
	last_update_date_time = "2016-12-31T23:58:21.6459442-08:00",
	configuration_version = 4,
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').device_status_overview.patch(request_body)


```