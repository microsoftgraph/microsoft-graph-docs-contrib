---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalIdentitiesPolicy externalIdentitiesPolicy = new ExternalIdentitiesPolicy();
externalIdentitiesPolicy.allowExternalIdentitiesToLeave = false;

graphClient.policies().externalIdentitiesPolicy()
	.buildRequest()
	.patch(externalIdentitiesPolicy);

```