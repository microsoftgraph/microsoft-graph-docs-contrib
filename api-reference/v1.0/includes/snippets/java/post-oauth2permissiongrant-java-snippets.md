---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OAuth2PermissionGrant oAuth2PermissionGrant = new OAuth2PermissionGrant();
oAuth2PermissionGrant.clientId = "ef969797-201d-4f6b-960c-e9ed5f31dab5";
oAuth2PermissionGrant.consentType = "AllPrincipals";
oAuth2PermissionGrant.resourceId = "943603e4-e787-4fe9-93d1-e30f749aae39";
oAuth2PermissionGrant.scope = "DelegatedPermissionGrant.ReadWrite.All";

graphClient.oauth2PermissionGrants()
	.buildRequest()
	.post(oAuth2PermissionGrant);

```