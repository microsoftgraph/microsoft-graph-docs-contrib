---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ArkoseFraudProtectionProvider fraudProtectionProvider = new ArkoseFraudProtectionProvider();
fraudProtectionProvider.setOdataType("#microsoft.graph.arkoseFraudProtectionProvider");
fraudProtectionProvider.setDisplayName("Arkose Sign-Up Protection");
fraudProtectionProvider.setPublicKey("A1EE42E0-C88B-47FE-A176-5E9FB8F116FB");
fraudProtectionProvider.setPrivateKey("19BBE628-7DEF-4E28-AB25-BF129C760B7E");
fraudProtectionProvider.setClientSubDomain("client-api");
fraudProtectionProvider.setVerifySubDomain("verify-api");
FraudProtectionProvider result = graphClient.identity().riskPrevention().fraudProtectionProviders().post(fraudProtectionProvider);


```