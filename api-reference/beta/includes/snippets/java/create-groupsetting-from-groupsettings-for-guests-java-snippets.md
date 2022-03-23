---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectorySetting directorySetting = new DirectorySetting();
directorySetting.templateId = "08d542b9-071f-4e16-94b0-74abb372e3d9";
LinkedList<SettingValue> valuesList = new LinkedList<SettingValue>();
SettingValue values = new SettingValue();
values.name = "AllowToAddGuests";
values.value = "false";
valuesList.add(values);
directorySetting.values = valuesList;

graphClient.groups("05aa6a98-956a-45c0-b13b-88076a23f2cd").settings()
	.buildRequest()
	.post(directorySetting);

```