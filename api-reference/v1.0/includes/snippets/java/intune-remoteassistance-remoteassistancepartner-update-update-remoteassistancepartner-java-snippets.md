---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RemoteAssistancePartner remoteAssistancePartner = new RemoteAssistancePartner();
remoteAssistancePartner.setOdataType("#microsoft.graph.remoteAssistancePartner");
remoteAssistancePartner.setDisplayName("Display Name value");
remoteAssistancePartner.setOnboardingUrl("https://example.com/onboardingUrl/");
remoteAssistancePartner.setOnboardingStatus(RemoteAssistanceOnboardingStatus.Onboarding);
OffsetDateTime lastConnectionDateTime = OffsetDateTime.parse("2016-12-31T23:58:36.6670033-08:00");
remoteAssistancePartner.setLastConnectionDateTime(lastConnectionDateTime);
RemoteAssistancePartner result = graphClient.deviceManagement().remoteAssistancePartners().byRemoteAssistancePartnerId("{remoteAssistancePartner-id}").patch(remoteAssistancePartner);


```