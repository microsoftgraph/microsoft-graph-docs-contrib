---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.managed_app_policy_deployment_summary import ManagedAppPolicyDeploymentSummary
from msgraph.generated.models.managed_app_policy_deployment_summary_per_app import ManagedAppPolicyDeploymentSummaryPerApp
from msgraph.generated.models.android_mobile_app_identifier import AndroidMobileAppIdentifier

graph_client = GraphServiceClient(credentials, scopes)

request_body = ManagedAppPolicyDeploymentSummary(
	odata_type = "#microsoft.graph.managedAppPolicyDeploymentSummary",
	display_name = "Display Name value",
	configuration_deployed_user_count = 14,
	last_refresh_time = "2017-01-01T00:01:30.1240368-08:00",
	configuration_deployment_summary_per_app = [
		ManagedAppPolicyDeploymentSummaryPerApp(
			odata_type = "microsoft.graph.managedAppPolicyDeploymentSummaryPerApp",
			mobile_app_identifier = AndroidMobileAppIdentifier(
				odata_type = "microsoft.graph.androidMobileAppIdentifier",
				package_id = "Package Id value",
			),
			configuration_applied_user_count = 13,
		),
	],
	version = "Version value",
)

result = await graph_client.device_app_management.ios_managed_app_protections.by_ios_managed_app_protection_id('iosManagedAppProtection-id').deployment_summary.patch(request_body)


```