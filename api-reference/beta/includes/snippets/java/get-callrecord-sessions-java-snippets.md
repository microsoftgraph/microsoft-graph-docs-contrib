---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SessionCollectionPage sessions = graphClient.communications().callRecords("e523d2ed-2966-4b6b-925b-754a88034cc5").sessions()
	.buildRequest()
	.get();

```