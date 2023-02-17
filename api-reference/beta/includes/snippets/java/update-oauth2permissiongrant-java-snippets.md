---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OAuth2PermissionGrant oAuth2PermissionGrant = new OAuth2PermissionGrant();
oAuth2PermissionGrant.scope = "User.ReadBasic.All Group.ReadWrite.All";

graphClient.oauth2PermissionGrants("l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk")
	.buildRequest()
	.patch(oAuth2PermissionGrant);

```