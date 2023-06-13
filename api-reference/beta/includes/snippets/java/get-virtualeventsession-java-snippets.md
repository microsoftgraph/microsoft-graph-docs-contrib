---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualEventSession virtualEventSession = graphClient.solutions().virtualEvents().events("{virtualEventId}").sessions("{virtualEventSessionId}")
	.buildRequest()
	.get();

```