---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserCollectionPage users = graphClient.users()
	.buildRequest()
	.filter("isManagementRestricted eq true")
	.select("displayName,userPrincipalName")
	.get();

```