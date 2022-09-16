---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailUrlThreatSubmission emailThreatSubmission = new EmailUrlThreatSubmission();
emailThreatSubmission.category = SubmissionCategory.SPAM;
emailThreatSubmission.recipientEmailAddress = "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com";
emailThreatSubmission.messageUrl = "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=";

graphClient.security().threatSubmission().emailThreats()
	.buildRequest()
	.post(emailThreatSubmission);

```