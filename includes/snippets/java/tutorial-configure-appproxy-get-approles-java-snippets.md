---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleCollectionPage appRoles = graphClient.customRequest("/servicePrincipals/a8cac399-cde5-4516-a674-819503c61313/appRoles", AppRoleCollectionPage.class)
	.buildRequest()
	.get();

```