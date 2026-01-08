---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.securitycopilot.PluginCollectionResponse result = graphClient.security().securityCopilot().workspaces().byWorkspaceId("{workspace-id}").plugins().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "name eq 'Entra'";
});


```