---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = WindowsDefenderAdvancedThreatProtectionConfiguration(
	odata_type = "#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	allow_sample_sharing = True,
	enable_expedited_telemetry_reporting = True,
)

result = await graph_client.device_management.device_configurations.post(body = request_body)


```