---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String clientContext = "d45324c1-fcb5-430a-902c-f20af696537c";

graphClient.communications().calls("e141b67c-90fd-455d-858b-b48a40b9cc8d").participants("fa1e9582-7145-4ca3-bcd8-577f561fcb6e")
	.stopHoldMusic(ParticipantStopHoldMusicParameterSet
		.newBuilder()
		.withClientContext(clientContext)
		.build())
	.buildRequest()
	.post();

```