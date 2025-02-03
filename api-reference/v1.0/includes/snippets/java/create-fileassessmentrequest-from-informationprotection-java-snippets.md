---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileAssessmentRequest threatAssessmentRequest = new FileAssessmentRequest();
threatAssessmentRequest.setOdataType("#microsoft.graph.fileAssessmentRequest");
threatAssessmentRequest.setExpectedAssessment(ThreatExpectedAssessment.Block);
threatAssessmentRequest.setCategory(ThreatCategory.Malware);
threatAssessmentRequest.setFileName("test.txt");
threatAssessmentRequest.setContentData("VGhpcyBpcyBhIHRlc3QgZmlsZQ==");
ThreatAssessmentRequest result = graphClient.informationProtection().threatAssessmentRequests().post(threatAssessmentRequest);


```