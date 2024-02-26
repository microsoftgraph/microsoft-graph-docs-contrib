---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.Deployment deployment = new com.microsoft.graph.beta.models.windowsupdates.Deployment();
deployment.setOdataType("#microsoft.graph.windowsUpdates.deployment");
com.microsoft.graph.beta.models.windowsupdates.DeploymentState state = new com.microsoft.graph.beta.models.windowsupdates.DeploymentState();
state.setOdataType("microsoft.graph.windowsUpdates.deploymentState");
state.setRequestedValue(com.microsoft.graph.beta.models.windowsupdates.RequestedDeploymentStateValue.Paused);
deployment.setState(state);
com.microsoft.graph.models.windowsupdates.Deployment result = graphClient.admin().windows().updates().deployments().byDeploymentId("{deployment-id}").patch(deployment);


```