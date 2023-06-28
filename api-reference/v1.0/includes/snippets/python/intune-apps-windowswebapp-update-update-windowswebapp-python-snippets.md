---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WindowsWebApp()
request_body.@odata_type = '#microsoft.graph.windowsWebApp'

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

request_body.app_url = 'https://example.com/appUrl/'




result = await client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').patch(request_body = request_body)


```