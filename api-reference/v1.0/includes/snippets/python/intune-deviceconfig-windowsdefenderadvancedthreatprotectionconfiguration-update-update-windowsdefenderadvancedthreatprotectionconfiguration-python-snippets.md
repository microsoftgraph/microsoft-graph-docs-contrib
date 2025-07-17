---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows_defender_advanced_threat_protection_configuration import WindowsDefenderAdvancedThreatProtectionConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WindowsDefenderAdvancedThreatProtectionConfiguration(
	odata_type = "#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	allow_sample_sharing = True,
	enable_expedited_telemetry_reporting = True,
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```