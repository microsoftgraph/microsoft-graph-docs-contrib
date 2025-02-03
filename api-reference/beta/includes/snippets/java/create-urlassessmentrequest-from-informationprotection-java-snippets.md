---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UrlAssessmentRequest threatAssessmentRequest = new UrlAssessmentRequest();
threatAssessmentRequest.setOdataType("#microsoft.graph.urlAssessmentRequest");
threatAssessmentRequest.setUrl("http://test.com");
threatAssessmentRequest.setExpectedAssessment(ThreatExpectedAssessment.Block);
threatAssessmentRequest.setCategory(ThreatCategory.Phishing);
ThreatAssessmentRequest result = graphClient.informationProtection().threatAssessmentRequests().post(threatAssessmentRequest);


```