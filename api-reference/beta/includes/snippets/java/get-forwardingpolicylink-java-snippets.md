---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PolicyLink policyLink = graphClient.networkAccess().forwardingProfiles("{profileId}").policies("{forwardingPolicyLinkId}")
	.buildRequest()
	.get();

```