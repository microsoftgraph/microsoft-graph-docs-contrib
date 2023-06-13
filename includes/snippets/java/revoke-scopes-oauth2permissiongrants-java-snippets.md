---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OAuth2PermissionGrant oAuth2PermissionGrant = new OAuth2PermissionGrant();
oAuth2PermissionGrant.scope = "User.Read.All";

graphClient.oauth2PermissionGrants("47nZsM8O_UuNq5Jz3QValETpqX7OcT1EgRxx6AR7VXqdkr0_VoxiRIUeDrmns6Kl")
	.buildRequest()
	.patch(oAuth2PermissionGrant);

```