---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationContextClassReference authenticationContextClassReference = new AuthenticationContextClassReference();
authenticationContextClassReference.setId("c1");
authenticationContextClassReference.setDisplayName("Contoso medium");
authenticationContextClassReference.setDescription("Medium protection level defined for Contoso policy");
authenticationContextClassReference.setIsAvailable(true);
AuthenticationContextClassReference result = graphClient.identity().conditionalAccess().authenticationContextClassReferences().post(authenticationContextClassReference);


```