---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.FileContentThreatSubmission fileThreatSubmission = new com.microsoft.graph.beta.models.security.FileContentThreatSubmission();
fileThreatSubmission.setOdataType("#microsoft.graph.security.fileContentThreatSubmission");
fileThreatSubmission.setCategory(com.microsoft.graph.beta.models.security.SubmissionCategory.Malware);
fileThreatSubmission.setFileName("test.html");
fileThreatSubmission.setFileContent("UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....");
com.microsoft.graph.models.security.FileThreatSubmission result = graphClient.security().threatSubmission().fileThreats().post(fileThreatSubmission);


```