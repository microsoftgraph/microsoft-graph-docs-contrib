---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSetting groupSetting = new GroupSetting();
LinkedList<SettingValue> valuesList = new LinkedList<SettingValue>();
SettingValue values = new SettingValue();
values.name = "AllowToAddGuests";
values.value = "true";
valuesList.add(values);
groupSetting.values = valuesList;

graphClient.groups("0167b5af-f3d1-4910-82d2-398747fa381c").settings("fa6df613-159b-4f94-add2-7093f961900b")
	.buildRequest()
	.patch(groupSetting);

```