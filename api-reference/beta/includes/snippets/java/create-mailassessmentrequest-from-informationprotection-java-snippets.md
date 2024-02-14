---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailAssessmentRequest threatAssessmentRequest = new MailAssessmentRequest();
threatAssessmentRequest.setOdataType("#microsoft.graph.mailAssessmentRequest");
threatAssessmentRequest.setRecipientEmail("tifc@contoso.com");
threatAssessmentRequest.setExpectedAssessment(ThreatExpectedAssessment.Block);
threatAssessmentRequest.setCategory(ThreatCategory.Spam);
threatAssessmentRequest.setMessageUri("https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=");
ThreatAssessmentRequest result = graphClient.informationProtection().threatAssessmentRequests().post(threatAssessmentRequest);


```