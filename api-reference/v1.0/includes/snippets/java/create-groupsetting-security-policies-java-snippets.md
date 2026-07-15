---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupSetting groupSetting = new GroupSetting();
groupSetting.setTemplateId("7e0abea2-5c20-405f-9658-bfc9a523fd49");
LinkedList<SettingValue> values = new LinkedList<SettingValue>();
SettingValue settingValue = new SettingValue();
settingValue.setName("AllowToAddGuests");
settingValue.setValue("false");
values.add(settingValue);
groupSetting.setValues(values);
GroupSetting result = graphClient.groups().byGroupId("{group-id}").settings().post(groupSetting);


```