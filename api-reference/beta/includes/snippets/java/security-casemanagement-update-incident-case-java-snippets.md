---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.casemanagement.IncidentCase caseEscaped = new com.microsoft.graph.beta.models.security.casemanagement.IncidentCase();
caseEscaped.setOdataType("#microsoft.graph.security.caseManagement.incidentCase");
caseEscaped.setDisplayName("Incident Case MS-002");
caseEscaped.setStatus("InProgress");
caseEscaped.setClassification(com.microsoft.graph.beta.models.security.casemanagement.IncidentClassification.TruePositive);
caseEscaped.setDetermination(com.microsoft.graph.beta.models.security.casemanagement.IncidentDetermination.Phishing);
caseEscaped.setSeverity(com.microsoft.graph.beta.models.security.casemanagement.IncidentSeverity.High);
com.microsoft.graph.models.security.casemanagement.Case result = graphClient.security().caseManagement().cases().byCaseId("{case-id}").patch(caseEscaped);


```