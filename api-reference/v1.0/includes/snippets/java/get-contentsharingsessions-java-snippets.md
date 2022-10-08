---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContentSharingSessionCollectionPage contentSharingSessions = graphClient.communications().calls("7531d31f-d10d-44de-802f-c569dbca451c").contentSharingSessions()
	.buildRequest()
	.get();

```