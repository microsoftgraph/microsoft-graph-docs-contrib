---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UrlThreatSubmission urlThreatSubmission = new UrlThreatSubmission();
urlThreatSubmission.category = SubmissionCategory.PHISHING;
urlThreatSubmission.webUrl = "http://phishing.contoso.com";

graphClient.security().threatSubmission().urlThreats()
	.buildRequest()
	.post(urlThreatSubmission);

```