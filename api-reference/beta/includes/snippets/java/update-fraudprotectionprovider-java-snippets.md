---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ArkoseFraudProtectionProvider fraudProtectionProvider = new ArkoseFraudProtectionProvider();
fraudProtectionProvider.setOdataType("#microsoft.graph.arkoseFraudProtectionProvider");
fraudProtectionProvider.setDisplayName("Arkose Sign-Up Protection Updated");
FraudProtectionProvider result = graphClient.identity().riskPrevention().fraudProtectionProviders().byFraudProtectionProviderId("{fraudProtectionProvider-id}").patch(fraudProtectionProvider);


```