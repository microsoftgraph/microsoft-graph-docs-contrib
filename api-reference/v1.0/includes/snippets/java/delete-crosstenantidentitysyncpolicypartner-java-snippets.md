---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.policies().crossTenantAccessPolicy().partners("9c5d131d-b1c3-4fc4-9e3f-c6557947d551").identitySynchronization()
	.buildRequest()
	.delete();

```