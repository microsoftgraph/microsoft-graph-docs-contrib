---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "odata.maxpagesize=2"));

EventDeltaCollectionPage delta = graphClient.me().calendarView()
	.delta()
	.buildRequest( requestOptions )
	.skipToken("R0usmci39OQxqJrxK4")
	.get();

```