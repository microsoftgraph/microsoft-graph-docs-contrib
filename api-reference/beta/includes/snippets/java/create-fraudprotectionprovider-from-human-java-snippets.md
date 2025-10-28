---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

HumanSecurityFraudProtectionProvider fraudProtectionProvider = new HumanSecurityFraudProtectionProvider();
fraudProtectionProvider.setOdataType("#microsoft.graph.humanSecurityFraudProtectionProvider");
fraudProtectionProvider.setDisplayName("HUMAN Security Sign-Up Protection");
fraudProtectionProvider.setAppId("XXyy1XXXy");
fraudProtectionProvider.setServerToken("xxYYxxXXX1");
FraudProtectionProvider result = graphClient.identity().riskPrevention().fraudProtectionProviders().post(fraudProtectionProvider);


```