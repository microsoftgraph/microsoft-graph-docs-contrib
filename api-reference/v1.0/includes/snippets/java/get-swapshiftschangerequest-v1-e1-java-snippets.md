---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SwapShiftsChangeRequestCollectionPage swapShiftsChangeRequests = graphClient.teams("00d4ce58-658a-4d53-a0ad-99aa318bed28").schedule().swapShiftsChangeRequests()
	.buildRequest()
	.get();

```