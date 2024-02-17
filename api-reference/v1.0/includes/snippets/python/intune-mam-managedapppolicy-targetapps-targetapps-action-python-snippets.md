---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.target_apps_post_request_body import TargetAppsPostRequestBody
from msgraph.generated.models.managed_mobile_app import ManagedMobileApp
from msgraph.generated.models.android_mobile_app_identifier import AndroidMobileAppIdentifier

graph_client = GraphServiceClient(credentials, scopes)

request_body = TargetAppsPostRequestBody(
	apps = [
		ManagedMobileApp(
			odata_type = "#microsoft.graph.managedMobileApp",
			mobile_app_identifier = AndroidMobileAppIdentifier(
				odata_type = "microsoft.graph.androidMobileAppIdentifier",
				package_id = "Package Id value",
			),
			id = "0a129715-9715-0a12-1597-120a1597120a",
			version = "Version value",
		),
	],
)

await graph_client.device_app_management.managed_app_policies.by_managed_app_policy_id('managedAppPolicy-id').target_apps.post(request_body)


```