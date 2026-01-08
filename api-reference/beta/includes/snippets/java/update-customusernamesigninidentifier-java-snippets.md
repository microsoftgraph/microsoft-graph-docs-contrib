---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomUsernameSignInIdentifier signInIdentifierBase = new CustomUsernameSignInIdentifier();
signInIdentifierBase.setOdataType("#microsoft.graph.customUsernameSignInIdentifier");
signInIdentifierBase.setName("CustomUsername1");
signInIdentifierBase.setIsEnabled(true);
signInIdentifierBase.setValidationRegex("^[a-zA-Z]{4}\d{5}$");
SignInIdentifierBase result = graphClient.identity().signInIdentifiers().bySignInIdentifierBaseName("{signInIdentifierBase-name}").patch(signInIdentifierBase);


```