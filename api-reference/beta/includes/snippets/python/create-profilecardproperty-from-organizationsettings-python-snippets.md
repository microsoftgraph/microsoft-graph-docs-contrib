---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ProfileCardProperty()
request_body.directory_property_name = 'CustomAttribute1'

annotations_profile_card_annotation1 = ProfileCardAnnotation()
annotations_profile_card_annotation1.display_name = 'Cost Center'

localizations_display_name_localization1 = DisplayNameLocalization()
localizations_display_name_localization1.language_tag = 'ru-RU'

localizations_display_name_localization1.display_name = 'центр затрат'


localizationsArray []= localizationsDisplayNameLocalization1;
annotations_profile_card_annotation1.localizations(localizationsArray)



annotationsArray []= annotationsProfileCardAnnotation1;
request_body.annotations(annotationsArray)





result = await client.organization.by_organization_id('organization-id').settings.profile_card_properties.post(request_body = request_body)


```