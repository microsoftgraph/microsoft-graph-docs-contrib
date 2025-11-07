---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.securitycopilot.EvaluationCollectionResponse result = graphClient.security().securityCopilot().workspaces().byWorkspaceId("{workspace-id}").sessions().bySessionId("{session-id}").prompts().byPromptId("{prompt-id}").evaluations().get();


```