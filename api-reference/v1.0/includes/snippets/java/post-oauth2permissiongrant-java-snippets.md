---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OAuth2PermissionGrant oAuth2PermissionGrant = new OAuth2PermissionGrant();
oAuth2PermissionGrant.setClientId("ef969797-201d-4f6b-960c-e9ed5f31dab5");
oAuth2PermissionGrant.setConsentType("AllPrincipals");
oAuth2PermissionGrant.setResourceId("943603e4-e787-4fe9-93d1-e30f749aae39");
oAuth2PermissionGrant.setScope("DelegatedPermissionGrant.ReadWrite.All");
OAuth2PermissionGrant result = graphClient.oauth2PermissionGrants().post(oAuth2PermissionGrant);


```