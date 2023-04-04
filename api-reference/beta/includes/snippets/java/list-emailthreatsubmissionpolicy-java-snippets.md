---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailThreatSubmissionPolicyCollectionPage emailThreatSubmissionPolicies = graphClient.security().threatSubmission().emailThreatSubmissionPolicies()
	.buildRequest()
	.get();

```