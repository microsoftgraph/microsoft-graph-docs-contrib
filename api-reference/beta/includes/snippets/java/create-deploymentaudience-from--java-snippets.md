---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.DeploymentAudience deploymentAudience = new com.microsoft.graph.beta.models.windowsupdates.DeploymentAudience();
com.microsoft.graph.models.windowsupdates.DeploymentAudience result = graphClient.admin().windows().updates().deploymentAudiences().post(deploymentAudience);


```