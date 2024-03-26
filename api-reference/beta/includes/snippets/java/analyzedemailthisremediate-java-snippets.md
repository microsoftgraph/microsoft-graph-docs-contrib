---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.collaboration.analyzedemails.microsoftgraphsecurityremediate.RemediatePostRequestBody remediatePostRequestBody = new com.microsoft.graph.beta.security.collaboration.analyzedemails.microsoftgraphsecurityremediate.RemediatePostRequestBody();
remediatePostRequestBody.setDisplayName("Clean up Phish email");
remediatePostRequestBody.setDescription("Delete email");
remediatePostRequestBody.setSeverity(com.microsoft.graph.beta.models.security.RemediationSeverity.Medium);
remediatePostRequestBody.setAction(com.microsoft.graph.beta.models.security.RemediationAction.SoftDelete);
remediatePostRequestBody.setRemediateSendersCopy(false);
LinkedList<com.microsoft.graph.beta.models.security.AnalyzedEmail> analyzedEmails = new LinkedList<com.microsoft.graph.beta.models.security.AnalyzedEmail>();
com.microsoft.graph.beta.models.security.AnalyzedEmail analyzedEmail = new com.microsoft.graph.beta.models.security.AnalyzedEmail();
analyzedEmail.setId("73ca4154-58d8-43d0-a890-08dc18c52e6d-1311265001240363512-1");
analyzedEmails.add(analyzedEmail);
com.microsoft.graph.beta.models.security.AnalyzedEmail analyzedEmail1 = new com.microsoft.graph.beta.models.security.AnalyzedEmail();
analyzedEmail1.setId("73ca4154-58d8-43d0-a890-08dc18c52e6d-13805748846361900678-1");
analyzedEmails.add(analyzedEmail1);
remediatePostRequestBody.setAnalyzedEmails(analyzedEmails);
graphClient.security().collaboration().analyzedEmails().microsoftGraphSecurityRemediate().post(remediatePostRequestBody);


```