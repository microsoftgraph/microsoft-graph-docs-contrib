---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.teams("ece6f0a1-7ca4-498b-be79-edf6c8fc4d82").incomingChannels("19:56eb04e133944cf69e603c5dac2d292e@thread.skype").reference()
	.buildRequest()
	.delete();

```