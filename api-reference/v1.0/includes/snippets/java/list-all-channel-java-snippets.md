---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChannelCollectionWithReferencesPage allChannels = graphClient.teams("893075dd-2487-4122-925f-022c42e20265").allChannels()
	.buildRequest()
	.get();

```