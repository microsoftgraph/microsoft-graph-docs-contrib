---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ForwardingPolicy forwardingPolicy = graphClient.networkAccess().forwardingPolicies("{forwardingPolicyId}")
	.buildRequest()
	.get();

```