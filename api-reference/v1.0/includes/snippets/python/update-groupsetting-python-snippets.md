---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GroupSetting()
values_setting_value1 = SettingValue()
values_setting_value1.name = 'AllowToAddGuests'

values_setting_value1.value = 'true'


valuesArray []= valuesSettingValue1;
request_body.values(valuesArray)





result = await client.groups.by_group_id('group-id').settings.by_setting_id('groupSetting-id').patch(request_body = request_body)


```