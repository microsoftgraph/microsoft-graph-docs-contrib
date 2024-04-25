---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupSetting groupSetting = new GroupSetting();
groupSetting.setTemplateId("08d542b9-071f-4e16-94b0-74abb372e3d9");
LinkedList<SettingValue> values = new LinkedList<SettingValue>();
SettingValue settingValue = new SettingValue();
settingValue.setName("AllowToAddGuests");
settingValue.setValue("false");
values.add(settingValue);
groupSetting.setValues(values);
GroupSetting result = graphClient.groups().byGroupId("{group-id}").settings().post(groupSetting);


```