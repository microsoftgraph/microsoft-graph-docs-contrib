---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChannelCollectionPage channels = graphClient.teams("6a720ba5-7373-463b-bc9f-4cd04b5c6742").channels()
	.buildRequest()
	.filter("membershipType eq 'shared'")
	.get();

```