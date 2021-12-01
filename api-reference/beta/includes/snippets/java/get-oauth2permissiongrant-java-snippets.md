---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OAuth2PermissionGrant oAuth2PermissionGrant = graphClient.oauth2PermissionGrants("AVs6JuUDjkCFV7q2gd8QTPimBBgj5iBFj0C6GwwRxC0")
	.buildRequest()
	.get();

```