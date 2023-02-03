---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailThreatSubmissionPolicy emailThreatSubmissionPolicy = new EmailThreatSubmissionPolicy();
emailThreatSubmissionPolicy.isReportToMicrosoftEnabled = true;

graphClient.security().threatSubmission().emailThreatSubmissionPolicies()
	.buildRequest()
	.post(emailThreatSubmissionPolicy);

```