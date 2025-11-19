---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EmailSignInIdentifier signInIdentifierBase = new EmailSignInIdentifier();
signInIdentifierBase.setOdataType("#microsoft.graph.emailSignInIdentifier");
signInIdentifierBase.setName("Email");
signInIdentifierBase.setIsEnabled(true);
SignInIdentifierBase result = graphClient.identity().signInIdentifiers().bySignInIdentifierBaseName("{signInIdentifierBase-name}").patch(signInIdentifierBase);


```