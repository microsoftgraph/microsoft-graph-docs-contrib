---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RemoteAssistancePartner remoteAssistancePartner = new RemoteAssistancePartner();
remoteAssistancePartner.displayName = "Display Name value";
remoteAssistancePartner.onboardingUrl = "https://example.com/onboardingUrl/";
remoteAssistancePartner.onboardingStatus = RemoteAssistanceOnboardingStatus.ONBOARDING;
remoteAssistancePartner.lastConnectionDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:36.6670033+00:00");

graphClient.deviceManagement().remoteAssistancePartners()
	.buildRequest()
	.post(remoteAssistancePartner);

```