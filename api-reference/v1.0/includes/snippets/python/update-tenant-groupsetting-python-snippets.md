---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GroupSetting()
values_setting_value1 = SettingValue()
values_setting_value1.name = 'AllowToAddGuests'

values_setting_value1.value = 'false'


valuesArray []= valuesSettingValue1;
request_body.values(valuesArray)





result = await client.group_settings.by_group_setting_id('groupSetting-id').patch(request_body = request_body)


```