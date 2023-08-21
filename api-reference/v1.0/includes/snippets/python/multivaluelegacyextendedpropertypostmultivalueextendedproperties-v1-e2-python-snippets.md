---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Message()
multi_value_extended_properties_multi_value_legacy_extended_property1 = MultiValueLegacyExtendedProperty()
multi_value_extended_properties_multi_value_legacy_extended_property1.id = 'StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette'

multi_value_extended_properties_multi_value_legacy_extended_property1.Value(['Green', 'Aqua', 'Blue', ])


multiValueExtendedPropertiesArray []= multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1;
request_body.multivalueextendedproperties(multiValueExtendedPropertiesArray)





result = await client.me.messages.by_message_id('message-id').patch(request_body = request_body)


```