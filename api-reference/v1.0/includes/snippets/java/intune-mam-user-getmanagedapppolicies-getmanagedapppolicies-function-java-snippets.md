---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserGetManagedAppPoliciesCollectionPage getManagedAppPolicies = graphClient.users("{usersId}")
	.getManagedAppPolicies()
	.buildRequest()
	.get();

```