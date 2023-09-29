---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationPolicyCollectionPage authorizationPolicy = graphClient.policies().authorizationPolicy()
	.buildRequest()
	.get();

```