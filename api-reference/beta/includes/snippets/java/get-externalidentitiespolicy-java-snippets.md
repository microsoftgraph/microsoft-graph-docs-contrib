---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalIdentitiesPolicy externalIdentitiesPolicy = graphClient.policies().externalIdentitiesPolicy()
	.buildRequest()
	.get();

```