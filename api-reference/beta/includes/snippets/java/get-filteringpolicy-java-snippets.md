---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilteringPolicy filteringPolicy = graphClient.networkAccess().filteringPolicies("161760b2-7053-4045-b886-3bce286989ae")
	.buildRequest()
	.get();

```