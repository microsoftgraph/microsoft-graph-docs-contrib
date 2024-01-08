---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.networkaccess().forwardingProfiles("{forwardingProfile_id}").policies("{policy_id}")
	.buildRequest()
	.delete();

```