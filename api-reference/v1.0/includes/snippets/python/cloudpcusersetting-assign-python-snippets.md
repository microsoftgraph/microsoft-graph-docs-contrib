---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.virtualendpoint.usersettings.item.assign.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.cloud_pc_user_setting_assignment import CloudPcUserSettingAssignment
from msgraph.generated.models.cloud_pc_management_group_assignment_target import CloudPcManagementGroupAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignPostRequestBody(
	assignments = [
		CloudPcUserSettingAssignment(
			id = "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff",
			target = CloudPcManagementGroupAssignmentTarget(
				odata_type = "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
				group_id = "64ff06de-9c00-4a5a-98b5-7f5abe26ffff",
			),
		),
	],
)

await graph_client.device_management.virtual_endpoint.user_settings.by_cloud_pc_user_setting_id('cloudPcUserSetting-id').assign.post(request_body)


```