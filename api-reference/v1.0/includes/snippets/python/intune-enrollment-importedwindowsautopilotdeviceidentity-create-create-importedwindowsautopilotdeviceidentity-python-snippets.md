---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.imported_windows_autopilot_device_identity import ImportedWindowsAutopilotDeviceIdentity
from msgraph.generated.models.imported_windows_autopilot_device_identity_state import ImportedWindowsAutopilotDeviceIdentityState

graph_client = GraphServiceClient(credentials, scopes)

request_body = ImportedWindowsAutopilotDeviceIdentity(
	odata_type = "#microsoft.graph.importedWindowsAutopilotDeviceIdentity",
	group_tag = "Group Tag value",
	serial_number = "Serial Number value",
	product_key = "Product Key value",
	import_id = "Import Id value",
	hardware_identifier = base64.urlsafe_b64decode("aGFyZHdhcmVJZGVudGlmaWVy"),
	state = ImportedWindowsAutopilotDeviceIdentityState(
		odata_type = "microsoft.graph.importedWindowsAutopilotDeviceIdentityState",
		device_import_status = ImportedWindowsAutopilotDeviceIdentityImportStatus.Pending,
		device_registration_id = "Device Registration Id value",
		device_error_code = 15,
		device_error_name = "Device Error Name value",
	),
	assigned_user_principal_name = "Assigned User Principal Name value",
)

result = await graph_client.device_management.imported_windows_autopilot_device_identities.post(request_body)


```