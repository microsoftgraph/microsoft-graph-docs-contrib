---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AndroidLobApp()
request_body.@odata_type = '#microsoft.graph.androidLobApp'

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

request_body.committed_content_version = 'Committed Content Version value'

request_body.file_name = 'File Name value'

request_body.Size = 4

request_body.package_id = 'Package Id value'

minimum_supported_operating_system = AndroidMinimumOperatingSystem()
minimum_supported_operating_system.@odata_type = 'microsoft.graph.androidMinimumOperatingSystem'

minimum_supported_operating_system.v4_0 = True

minimum_supported_operating_system.v4_0_3 = True

minimum_supported_operating_system.v4_1 = True

minimum_supported_operating_system.v4_2 = True

minimum_supported_operating_system.v4_3 = True

minimum_supported_operating_system.v4_4 = True

minimum_supported_operating_system.v5_0 = True

minimum_supported_operating_system.v5_1 = True

minimum_supported_operating_system.v6_0 = True

minimum_supported_operating_system.v7_0 = True

minimum_supported_operating_system.v7_1 = True

minimum_supported_operating_system.v8_0 = True

minimum_supported_operating_system.v8_1 = True

minimum_supported_operating_system.v9_0 = True

minimum_supported_operating_system.v10_0 = True

minimum_supported_operating_system.v11_0 = True


request_body.minimum_supported_operating_system = minimum_supported_operating_system
request_body.version_name = 'Version Name value'

request_body.version_code = 'Version Code value'




result = await client.device_app_management.mobile_apps.post(request_body = request_body)


```