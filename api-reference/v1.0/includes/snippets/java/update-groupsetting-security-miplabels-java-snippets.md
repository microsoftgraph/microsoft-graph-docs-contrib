---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupSetting groupSetting = new GroupSetting();
LinkedList<SettingValue> values = new LinkedList<SettingValue>();
SettingValue settingValue = new SettingValue();
settingValue.setName("EnableMIPLabels");
settingValue.setValue("true");
values.add(settingValue);
groupSetting.setValues(values);
GroupSetting result = graphClient.groupSettings().byGroupSettingId("{groupSetting-id}").patch(groupSetting);


```