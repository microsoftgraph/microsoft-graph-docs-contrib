---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilteringPolicyCollectionPage filteringPolicies = graphClient.networkAccess().filteringPolicies()
	.buildRequest()
	.get();

```