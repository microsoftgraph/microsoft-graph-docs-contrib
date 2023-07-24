---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ManagedIOSLobApp()
request_body.@odata_type = '#microsoft.graph.managedIOSLobApp'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.publisher = 'Publisher value'

large_icon = MimeContent()
large_icon.@odata_type = 'microsoft.graph.mimeContent'

large_icon.type = 'Type value'

large_icon.Value(base64_decode('dmFsdWU='))


request_body.large_icon = large_icon
request_body.is_featured = True

request_body.privacy_information_url = 'https://example.com/privacyInformationUrl/'

request_body.information_url = 'https://example.com/informationUrl/'

request_body.owner = 'Owner value'

request_body.developer = 'Developer value'

request_body.notes = 'Notes value'

request_body.publishingstate(MobileAppPublishingState.Processing('mobileapppublishingstate.processing'))

request_body.appavailability(ManagedAppAvailability.LineOfBusiness('managedappavailability.lineofbusiness'))

request_body.version = 'Version value'

request_body.committed_content_version = 'Committed Content Version value'

request_body.file_name = 'File Name value'

request_body.Size = 4

request_body.bundle_id = 'Bundle Id value'

applicable_device_type = IosDeviceType()
applicable_device_type.@odata_type = 'microsoft.graph.iosDeviceType'

applicable_device_type.i_pad = True

applicable_device_type.i_phone_and_i_pod = True


request_body.applicable_device_type = applicable_device_type
minimum_supported_operating_system = IosMinimumOperatingSystem()
minimum_supported_operating_system.@odata_type = 'microsoft.graph.iosMinimumOperatingSystem'

minimum_supported_operating_system.v8_0 = True

minimum_supported_operating_system.v9_0 = True

minimum_supported_operating_system.v10_0 = True

minimum_supported_operating_system.v11_0 = True

minimum_supported_operating_system.v12_0 = True

minimum_supported_operating_system.v13_0 = True

minimum_supported_operating_system.v14_0 = True

minimum_supported_operating_system.v15_0 = True


request_body.minimum_supported_operating_system = minimum_supported_operating_system
request_body.expirationDateTime = DateTime('2016-12-31T23:57:57.2481234-08:00')

request_body.version_number = 'Version Number value'

request_body.build_number = 'Build Number value'




result = await client.device_app_management.mobile_apps.post(request_body = request_body)


```