---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Workspace place = new Workspace();
place.nickname = "Conf Room";
place.building = "1";
place.label = "100";
place.capacity = 50;
place.isWheelChairAccessible = false;

graphClient.places("ws100@contoso.com")
	.buildRequest()
	.patch(place);

```