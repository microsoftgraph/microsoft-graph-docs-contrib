---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Message()
single_value_extended_properties_single_value_legacy_extended_property1 = SingleValueLegacyExtendedProperty()
single_value_extended_properties_single_value_legacy_extended_property1.id = 'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color'

single_value_extended_properties_single_value_legacy_extended_property1.value = 'Green'


singleValueExtendedPropertiesArray []= singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1;
request_body.singlevalueextendedproperties(singleValueExtendedPropertiesArray)





result = await client.me.messages.by_message_id('message-id').patch(request_body = request_body)


```