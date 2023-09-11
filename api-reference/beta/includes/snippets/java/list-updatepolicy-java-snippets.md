---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatePolicyCollectionPage updatePolicies = graphClient.admin().windows().updates().updatePolicies()
	.buildRequest()
	.get();

```