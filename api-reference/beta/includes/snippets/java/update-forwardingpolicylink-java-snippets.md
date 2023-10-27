---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ForwardingPolicyLink policyLink = new ForwardingPolicyLink();
policyLink.state = Status.ENABLED;

graphClient.networkAccess().forwardingProfiles("{forwardingProfile_id}").policies("{policy_id}")
	.buildRequest()
	.patch(policyLink);

```