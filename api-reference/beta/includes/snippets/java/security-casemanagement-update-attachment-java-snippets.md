---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.casemanagement.Attachment attachment = new com.microsoft.graph.beta.models.security.casemanagement.Attachment();
attachment.setDisplayName("Case MS-001 Attachment");
attachment.setDescription("Screenshot of suspicious sign-in activity");
com.microsoft.graph.models.security.casemanagement.Attachment result = graphClient.security().caseManagement().cases().byCaseId("{case-id}").attachments().byAttachmentId("{attachment-id}").patch(attachment);


```