---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GroupSetting()
request_body.template_id = '08d542b9-071f-4e16-94b0-74abb372e3d9'

values_setting_value1 = SettingValue()
values_setting_value1.name = 'AllowToAddGuests'

values_setting_value1.value = 'false'


valuesArray []= valuesSettingValue1;
request_body.values(valuesArray)





result = await client.groups.by_group_id('group-id').settings.post(request_body = request_body)


```