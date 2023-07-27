---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ForwardingProfile forwardingProfile = graphClient.networkAccess().forwardingProfiles("{forwardingProfileId}")
	.buildRequest()
	.get();

```