---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ParticipantCollectionPage participants_v2 = graphClient.communications().callRecords("614e3ff0-4728-4394-8c03-52fb3b967fde").participants_v2()
	.buildRequest()
	.get();

```