---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ImportedWindowsAutopilotDeviceIdentity()
request_body.@odata_type = '#microsoft.graph.importedWindowsAutopilotDeviceIdentity'

request_body.group_tag = 'Group Tag value'

request_body.serial_number = 'Serial Number value'

request_body.product_key = 'Product Key value'

request_body.import_id = 'Import Id value'

request_body.HardwareIdentifier(base64_decode('aGFyZHdhcmVJZGVudGlmaWVy'))

state = ImportedWindowsAutopilotDeviceIdentityState()
state.@odata_type = 'microsoft.graph.importedWindowsAutopilotDeviceIdentityState'

state.deviceimportstatus(ImportedWindowsAutopilotDeviceIdentityImportStatus.Pending('importedwindowsautopilotdeviceidentityimportstatus.pending'))

state.device_registration_id = 'Device Registration Id value'

state.DeviceErrorCode = 15

state.device_error_name = 'Device Error Name value'


request_body.state = state
request_body.assigned_user_principal_name = 'Assigned User Principal Name value'




result = await client.device_management.imported_window_autopilot_device_identities.post(request_body = request_body)


```