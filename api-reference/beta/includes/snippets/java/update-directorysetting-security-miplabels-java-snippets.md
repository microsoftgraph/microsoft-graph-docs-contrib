---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DirectorySetting directorySetting = new DirectorySetting();
LinkedList<SettingValue> values = new LinkedList<SettingValue>();
SettingValue settingValue = new SettingValue();
settingValue.setName("EnableMIPLabels");
settingValue.setValue("true");
values.add(settingValue);
directorySetting.setValues(values);
DirectorySetting result = graphClient.settings().byDirectorySettingId("{directorySetting-id}").patch(directorySetting);


```