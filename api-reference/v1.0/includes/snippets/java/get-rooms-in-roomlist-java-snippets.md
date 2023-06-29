---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoomCollectionPage rooms = graphClient.places("Building2Rooms@M365x214355.onmicrosoft.com").microsoft.graph.roomlist().rooms()
	.buildRequest()
	.get();

```