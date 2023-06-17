---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectorySetting directorySetting = new DirectorySetting();
LinkedList<SettingValue> valuesList = new LinkedList<SettingValue>();
SettingValue values = new SettingValue();
values.name = "CustomBlockedWordsList";
values.value = "Contoso";
valuesList.add(values);
directorySetting.values = valuesList;

graphClient.settings("3c105fc3-2254-4861-9e2d-d59e2126f3ef")
	.buildRequest()
	.patch(directorySetting);

```