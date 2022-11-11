---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.policies().claimsMappingPolicies("a4b35718-fd5e-4ca8-8248-a3c9934b1b78")
	.buildRequest()
	.delete();

```