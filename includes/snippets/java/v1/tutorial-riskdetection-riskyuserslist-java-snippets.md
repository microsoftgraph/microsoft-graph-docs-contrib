---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RiskyUserCollectionPage riskyUsers = graphClient.identityProtection().riskyUsers()
	.buildRequest()
	.filter("userDisplayName eq 'MyTestUser1'")
	.get();

```