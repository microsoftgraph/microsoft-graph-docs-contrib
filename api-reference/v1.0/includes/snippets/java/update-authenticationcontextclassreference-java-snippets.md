---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationContextClassReference authenticationContextClassReference = new AuthenticationContextClassReference();
authenticationContextClassReference.displayName = "Contoso medium";
authenticationContextClassReference.description = "Medium protection level defined for Contoso policy";
authenticationContextClassReference.isAvailable = true;

graphClient.identity().conditionalAccess().authenticationContextClassReferences("c1")
	.buildRequest()
	.patch(authenticationContextClassReference);

```