---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailThreatSubmissionPolicy emailThreatSubmissionPolicy = graphClient.security().threatSubmission().emailThreatSubmissionPolicies("{emailThreatSubmissionPoliciesId}")
	.buildRequest()
	.get();

```