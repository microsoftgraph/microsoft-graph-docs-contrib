---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.HealthIssue healthIssue = new com.microsoft.graph.beta.models.security.HealthIssue();
healthIssue.setStatus(com.microsoft.graph.beta.models.security.HealthIssueStatus.Closed);
com.microsoft.graph.models.security.HealthIssue result = graphClient.security().identities().healthIssues().byHealthIssueId("{healthIssue-id}").patch(healthIssue);


```