---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminDynamics adminDynamics = new AdminDynamics();
CustomerVoiceSettings customerVoice = new CustomerVoiceSettings();
customerVoice.isRestrictedSurveyAccessEnabled = false;
customerVoice.isRecordIdentityByDefaultEnabled = false;
customerVoice.isInOrgFormsPhishingScanEnabled = false;
adminDynamics.customerVoice = customerVoice;

graphClient.admin().dynamics()
	.buildRequest()
	.patch(adminDynamics);

```