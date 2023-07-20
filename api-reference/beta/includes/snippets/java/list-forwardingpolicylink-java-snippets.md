---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PolicyLinkCollectionPage policies = graphClient.networkAccess().forwardingProfiles("{forwardingProfileId}").policies()
	.buildRequest()
	.get();

```