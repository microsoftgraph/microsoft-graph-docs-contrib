---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EmailFileAssessmentRequest threatAssessmentRequest = new EmailFileAssessmentRequest();
threatAssessmentRequest.setOdataType("#microsoft.graph.emailFileAssessmentRequest");
threatAssessmentRequest.setRecipientEmail("tifc@contoso.com");
threatAssessmentRequest.setExpectedAssessment(ThreatExpectedAssessment.Block);
threatAssessmentRequest.setCategory(ThreatCategory.Malware);
threatAssessmentRequest.setContentData("UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....");
ThreatAssessmentRequest result = graphClient.informationProtection().threatAssessmentRequests().post(threatAssessmentRequest);


```