---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PolicyLinkCollectionPage policies = graphClient.networkaccess().filteringProfiles("9020f79d-71f6-4650-83a9-6b532479578f").policies()
	.buildRequest()
	.get();

```