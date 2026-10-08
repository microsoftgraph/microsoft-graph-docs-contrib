---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.securitycopilot.Prompt prompt = new com.microsoft.graph.beta.models.security.securitycopilot.Prompt();
prompt.setOdataType("#microsoft.graph.security.securityCopilot.prompt");
prompt.setType(com.microsoft.graph.beta.models.security.securitycopilot.PromptType.Prompt);
prompt.setContent("who am I");
com.microsoft.graph.models.security.securitycopilot.Prompt result = graphClient.security().securityCopilot().workspaces().byWorkspaceId("{workspace-id}").sessions().bySessionId("{session-id}").prompts().post(prompt);


```