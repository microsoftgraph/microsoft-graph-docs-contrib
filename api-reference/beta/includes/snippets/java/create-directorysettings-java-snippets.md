---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectorySetting directorySetting = new DirectorySetting();
directorySetting.templateId = "62375ab9-6b52-47ed-826b-58e47e0e304b";
LinkedList<SettingValue> valuesList = new LinkedList<SettingValue>();
SettingValue values = new SettingValue();
values.name = "GuestUsageGuidelinesUrl";
values.value = "https://privacy.contoso.com/privacystatement";
valuesList.add(values);
SettingValue values1 = new SettingValue();
values1.name = "EnableMSStandardBlockedWords";
values1.value = "true";
valuesList.add(values1);
SettingValue values2 = new SettingValue();
values2.name = "EnableMIPLabels";
values2.value = "true";
valuesList.add(values2);
SettingValue values3 = new SettingValue();
values3.name = "PrefixSuffixNamingRequirement";
values3.value = "[Contoso-][GroupName]";
valuesList.add(values3);
directorySetting.values = valuesList;

graphClient.settings()
	.buildRequest()
	.post(directorySetting);

```