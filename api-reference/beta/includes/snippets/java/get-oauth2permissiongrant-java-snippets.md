---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OAuth2PermissionGrant result = graphClient.oauth2PermissionGrants().byOAuth2PermissionGrantId("{oAuth2PermissionGrant-id}").get();


```