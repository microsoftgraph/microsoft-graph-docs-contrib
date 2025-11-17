---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UpnSignInIdentifier signInIdentifierBase = new UpnSignInIdentifier();
signInIdentifierBase.setOdataType("#microsoft.graph.upnSignInIdentifier");
signInIdentifierBase.setName("UPN");
signInIdentifierBase.setIsEnabled(true);
SignInIdentifierBase result = graphClient.identity().signInIdentifiers().bySignInIdentifierBaseName("{signInIdentifierBase-name}").patch(signInIdentifierBase);


```