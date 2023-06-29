---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceManagement()
request_body.@odata_type = '#microsoft.graph.deviceManagement'

intune_brand = IntuneBrand()
intune_brand.@odata_type = 'microsoft.graph.intuneBrand'

intune_brand.display_name = 'Display Name value'

intune_brandtheme_color = RgbColor()
intune_brandtheme_color.@odata_type = 'microsoft.graph.rgbColor'

intune_brandtheme_color.R = 1

intune_brandtheme_color.G = 1

intune_brandtheme_color.B = 1


intune_brand.theme_color = intune_brandtheme_color
intune_brand.show_logo = True

intune_brandlight_background_logo = MimeContent()
intune_brandlight_background_logo.@odata_type = 'microsoft.graph.mimeContent'

intune_brandlight_background_logo.type = 'Type value'

intune_brandlight_background_logo.Value(base64_decode('dmFsdWU='))


intune_brand.light_background_logo = intune_brandlight_background_logo
intune_branddark_background_logo = MimeContent()
intune_branddark_background_logo.@odata_type = 'microsoft.graph.mimeContent'

intune_branddark_background_logo.type = 'Type value'

intune_branddark_background_logo.Value(base64_decode('dmFsdWU='))


intune_brand.dark_background_logo = intune_branddark_background_logo
intune_brand.show_name_next_to_logo = True

intune_brand.show_display_name_next_to_logo = True

intune_brand.contact_i_t_name = 'Contact ITName value'

intune_brand.contact_i_t_phone_number = 'Contact ITPhone Number value'

intune_brand.contact_i_t_email_address = 'Contact ITEmail Address value'

intune_brand.contact_i_t_notes = 'Contact ITNotes value'

intune_brand.online_support_site_url = 'https://example.com/onlineSupportSiteUrl/'

intune_brand.online_support_site_name = 'Online Support Site Name value'

intune_brand.privacy_url = 'https://example.com/privacyUrl/'


request_body.intune_brand = intune_brand



result = await client.device_management.patch(request_body = request_body)


```