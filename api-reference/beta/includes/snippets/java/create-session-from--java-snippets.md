---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.securitycopilot.Session session = new com.microsoft.graph.beta.models.security.securitycopilot.Session();
session.setOdataType("#microsoft.graph.security.securityCopilot.session");
session.setDisplayName("Who am I");
com.microsoft.graph.models.security.securitycopilot.Session result = graphClient.security().securityCopilot().workspaces().byWorkspaceId("{workspace-id}").sessions().post(session);


```