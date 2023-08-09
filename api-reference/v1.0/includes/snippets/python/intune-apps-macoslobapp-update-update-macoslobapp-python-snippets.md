---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MacOSLobApp()
request_body.@odata_type = '#microsoft.graph.macOSLobApp'

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

request_body.bundle_id = 'Bundle Id value'

minimum_supported_operating_system = MacOSMinimumOperatingSystem()
minimum_supported_operating_system.@odata_type = 'microsoft.graph.macOSMinimumOperatingSystem'

minimum_supported_operating_system.v10_7 = True

minimum_supported_operating_system.v10_8 = True

minimum_supported_operating_system.v10_9 = True

minimum_supported_operating_system.v10_10 = True

minimum_supported_operating_system.v10_11 = True

minimum_supported_operating_system.v10_12 = True

minimum_supported_operating_system.v10_13 = True

minimum_supported_operating_system.v10_14 = True

minimum_supported_operating_system.v10_15 = True

minimum_supported_operating_system.v11_0 = True

minimum_supported_operating_system.v12_0 = True

minimum_supported_operating_system.v13_0 = True


request_body.minimum_supported_operating_system = minimum_supported_operating_system
request_body.build_number = 'Build Number value'

request_body.version_number = 'Version Number value'

child_apps_mac_o_s_lob_child_app1 = MacOSLobChildApp()
child_apps_mac_o_s_lob_child_app1.@odata_type = 'microsoft.graph.macOSLobChildApp'

child_apps_mac_o_s_lob_child_app1.bundle_id = 'Bundle Id value'

child_apps_mac_o_s_lob_child_app1.build_number = 'Build Number value'

child_apps_mac_o_s_lob_child_app1.version_number = 'Version Number value'


childAppsArray []= childAppsMacOSLobChildApp1;
request_body.childapps(childAppsArray)


request_body.Md5HashChunkSize = 0

request_body.Md5Hash(['Md5Hash value', ])

request_body.ignore_version_detection = True

request_body.install_as_managed = True




result = await client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').patch(request_body = request_body)


```