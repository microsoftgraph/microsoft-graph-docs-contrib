---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailThreatSubmissionPolicy emailThreatSubmissionPolicy = new EmailThreatSubmissionPolicy();
emailThreatSubmissionPolicy.isReportToMicrosoftEnabled = false;

graphClient.security().threatSubmission().emailThreatSubmissionPolicies("DefaultReportSubmissionPolicy")
	.buildRequest()
	.patch(emailThreatSubmissionPolicy);

```