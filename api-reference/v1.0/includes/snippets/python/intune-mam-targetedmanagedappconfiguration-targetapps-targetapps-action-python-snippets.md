---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.deviceappmanagement.targetedmanagedappconfigurations.item.target_apps.target_apps_post_request_body import TargetAppsPostRequestBody
from msgraph.generated.models.managed_mobile_app import ManagedMobileApp
from msgraph.generated.models.android_mobile_app_identifier import AndroidMobileAppIdentifier
from msgraph.generated.models.targeted_managed_app_group_type import TargetedManagedAppGroupType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
	app_group_type = TargetedManagedAppGroupType.AllCoreMicrosoftApps,
)

await graph_client.device_app_management.targeted_managed_app_configurations.by_targeted_managed_app_configuration_id('targetedManagedAppConfiguration-id').target_apps.post(request_body)


```