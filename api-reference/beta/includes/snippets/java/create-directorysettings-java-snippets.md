---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DirectorySetting directorySetting = new DirectorySetting();
directorySetting.setTemplateId("62375ab9-6b52-47ed-826b-58e47e0e304b");
LinkedList<SettingValue> values = new LinkedList<SettingValue>();
SettingValue settingValue = new SettingValue();
settingValue.setName("GuestUsageGuidelinesUrl");
settingValue.setValue("https://privacy.contoso.com/privacystatement");
values.add(settingValue);
SettingValue settingValue1 = new SettingValue();
settingValue1.setName("EnableMSStandardBlockedWords");
settingValue1.setValue("true");
values.add(settingValue1);
SettingValue settingValue2 = new SettingValue();
settingValue2.setName("EnableMIPLabels");
settingValue2.setValue("true");
values.add(settingValue2);
SettingValue settingValue3 = new SettingValue();
settingValue3.setName("PrefixSuffixNamingRequirement");
settingValue3.setValue("[Contoso-][GroupName]");
values.add(settingValue3);
directorySetting.setValues(values);
DirectorySetting result = graphClient.settings().post(directorySetting);


```