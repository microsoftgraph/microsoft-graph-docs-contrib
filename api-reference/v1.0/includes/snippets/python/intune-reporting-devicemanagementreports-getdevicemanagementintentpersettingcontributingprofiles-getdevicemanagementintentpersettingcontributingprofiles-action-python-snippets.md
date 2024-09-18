---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.reports.get_device_management_intent_per_setting_contributing_profiles.get_device_management_intent_per_setting_contributing_profiles_post_request_body import GetDeviceManagementIntentPerSettingContributingProfilesPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetDeviceManagementIntentPerSettingContributingProfilesPostRequestBody(
	name = "Name value",
	select = [
		"Select value",
	],
	search = "Search value",
	group_by = [
		"Group By value",
	],
	order_by = [
		"Order By value",
	],
	skip = 4,
	top = 3,
	session_id = "Session Id value",
	filter = "Filter value",
)

await graph_client.device_management.reports.get_device_management_intent_per_setting_contributing_profiles.post(request_body)


```