---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DirectorySetting directorySetting = new DirectorySetting();
directorySetting.setTemplateId("d209f6fa-3839-4d70-b83f-60b1c64d0e8f");
LinkedList<SettingValue> values = new LinkedList<SettingValue>();
SettingValue settingValue = new SettingValue();
settingValue.setName("EnableMIPLabels");
settingValue.setValue("true");
values.add(settingValue);
directorySetting.setValues(values);
DirectorySetting result = graphClient.settings().post(directorySetting);


```