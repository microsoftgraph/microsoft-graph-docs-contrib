---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.servicePrincipals("f284860e-368c-4a1f-8894-77f0a9676fb3").appManagementPolicies("15942288-d19b-458c-9be4-20377d0a2435").reference()
	.buildRequest()
	.delete();

```