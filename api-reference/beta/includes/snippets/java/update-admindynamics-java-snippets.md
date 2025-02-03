---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AdminDynamics adminDynamics = new AdminDynamics();
adminDynamics.setOdataType("#microsoft.graph.adminDynamics");
CustomerVoiceSettings customerVoice = new CustomerVoiceSettings();
customerVoice.setOdataType("microsoft.graph.customerVoiceSettings");
customerVoice.setIsRestrictedSurveyAccessEnabled(false);
customerVoice.setIsRecordIdentityByDefaultEnabled(false);
customerVoice.setIsInOrgFormsPhishingScanEnabled(false);
adminDynamics.setCustomerVoice(customerVoice);
AdminDynamics result = graphClient.admin().dynamics().patch(adminDynamics);


```