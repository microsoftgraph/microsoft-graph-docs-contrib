---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WindowsAutopilotDeviceIdentity()
request_body.@odata_type = '#microsoft.graph.windowsAutopilotDeviceIdentity'

request_body.group_tag = 'Group Tag value'

request_body.purchase_order_identifier = 'Purchase Order Identifier value'

request_body.serial_number = 'Serial Number value'

request_body.product_key = 'Product Key value'

request_body.manufacturer = 'Manufacturer value'

request_body.model = 'Model value'

request_body.enrollmentstate(EnrollmentState.Enrolled('enrollmentstate.enrolled'))

request_body.lastContactedDateTime = DateTime('2016-12-31T23:58:44.2908994-08:00')

request_body.addressable_user_name = 'Addressable User Name value'

request_body.user_principal_name = 'User Principal Name value'

request_body.resource_name = 'Resource Name value'

request_body.sku_number = 'Sku Number value'

request_body.system_family = 'System Family value'

request_body.azure_active_directory_device_id = 'Azure Active Directory Device Id value'

request_body.managed_device_id = 'Managed Device Id value'

request_body.display_name = 'Display Name value'




result = await client.device_management.window_autopilot_device_identities.post(request_body = request_body)


```