---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InboundSharedUserProfileCollectionPage inboundSharedUserProfiles = graphClient.directory().inboundSharedUserProfiles()
	.buildRequest()
	.get();

```