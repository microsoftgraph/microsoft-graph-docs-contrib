---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IosVppApp()
request_body.@odata_type = '#microsoft.graph.iosVppApp'

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

request_body.UsedLicenseCount = 0

request_body.TotalLicenseCount = 1

request_body.releaseDateTime = DateTime('2017-01-01T00:01:34.7470482-08:00')

request_body.app_store_url = 'https://example.com/appStoreUrl/'

licensing_type = VppLicensingType()
licensing_type.@odata_type = 'microsoft.graph.vppLicensingType'

licensing_type.supports_user_licensing = True

licensing_type.supports_device_licensing = True


request_body.licensing_type = licensing_type
applicable_device_type = IosDeviceType()
applicable_device_type.@odata_type = 'microsoft.graph.iosDeviceType'

applicable_device_type.i_pad = True

applicable_device_type.i_phone_and_i_pod = True


request_body.applicable_device_type = applicable_device_type
request_body.vpp_token_organization_name = 'Vpp Token Organization Name value'

request_body.vpptokenaccounttype(VppTokenAccountType.Education('vpptokenaccounttype.education'))

request_body.vpp_token_apple_id = 'Vpp Token Apple Id value'

request_body.bundle_id = 'Bundle Id value'




result = await client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').patch(request_body = request_body)


```