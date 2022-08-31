---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OAuth2PermissionGrant oAuth2PermissionGrant = graphClient.oauth2PermissionGrants("QVzct6doFkStXRSoh_HGZcTUnzAfhaVGjK7Cv0gMgUsj54JH9PTzSqduJeO6sNiW")
	.buildRequest()
	.get();

```