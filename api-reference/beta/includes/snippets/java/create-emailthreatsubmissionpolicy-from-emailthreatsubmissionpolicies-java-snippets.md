---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EmailThreatSubmissionPolicy emailThreatSubmissionPolicy = new com.microsoft.graph.beta.models.security.EmailThreatSubmissionPolicy();
emailThreatSubmissionPolicy.setIsReportToMicrosoftEnabled(true);
com.microsoft.graph.models.security.EmailThreatSubmissionPolicy result = graphClient.security().threatSubmission().emailThreatSubmissionPolicies().post(emailThreatSubmissionPolicy);


```