---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.UrlThreatSubmission urlThreatSubmission = new com.microsoft.graph.beta.models.security.UrlThreatSubmission();
urlThreatSubmission.setOdataType("#microsoft.graph.urlThreatSubmission");
urlThreatSubmission.setCategory(com.microsoft.graph.beta.models.security.SubmissionCategory.Phishing);
urlThreatSubmission.setWebUrl("http://phishing.contoso.com");
com.microsoft.graph.models.security.UrlThreatSubmission result = graphClient.security().threatSubmission().urlThreats().post(urlThreatSubmission);


```