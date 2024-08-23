---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EmailUrlThreatSubmission emailThreatSubmission = new com.microsoft.graph.beta.models.security.EmailUrlThreatSubmission();
emailThreatSubmission.setOdataType("#microsoft.graph.security.emailUrlThreatSubmission");
emailThreatSubmission.setCategory(com.microsoft.graph.beta.models.security.SubmissionCategory.Spam);
emailThreatSubmission.setRecipientEmailAddress("tifc@contoso.com");
emailThreatSubmission.setMessageUrl("https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=");
com.microsoft.graph.models.security.EmailThreatSubmission result = graphClient.security().threatSubmission().emailThreats().post(emailThreatSubmission);


```