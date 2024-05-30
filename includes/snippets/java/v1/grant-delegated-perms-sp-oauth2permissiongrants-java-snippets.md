---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OAuth2PermissionGrant oAuth2PermissionGrant = new OAuth2PermissionGrant();
oAuth2PermissionGrant.setClientId("b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94");
oAuth2PermissionGrant.setConsentType("Principal");
oAuth2PermissionGrant.setResourceId("7ea9e944-71ce-443d-811c-71e8047b557a");
oAuth2PermissionGrant.setPrincipalId("3fbd929d-8c56-4462-851e-0eb9a7b3a2a5");
oAuth2PermissionGrant.setScope("User.Read.All Group.Read.All");
OAuth2PermissionGrant result = graphClient.oauth2PermissionGrants().post(oAuth2PermissionGrant);


```