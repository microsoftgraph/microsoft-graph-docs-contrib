---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.provisioningpolicies.item.schedule_policy_apply_task.schedule_policy_apply_task_post_request_body import SchedulePolicyApplyTaskPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SchedulePolicyApplyTaskPostRequestBody(
	additional_data = {
			"reserve_percentage" : 50,
			"cron_schedule_expression" : "0 0 0 20 * *",
			"start_date_time" : "2025-03-12 00:00:00",
			"end_date_time" : None,
			"timezone" : "cst",
	}
)

await graph_client.device_management.virtual_endpoint.provisioning_policies.by_cloud_pc_provisioning_policy_id('cloudPcProvisioningPolicy-id').schedule_policy_apply_task.post(request_body)


```