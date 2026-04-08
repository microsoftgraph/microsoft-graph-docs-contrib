---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AgentCollection agentCollection = new AgentCollection();
agentCollection.setDisplayName("New Display Name");
AgentCollection result = graphClient.agentRegistry().agentCollections().byAgentCollectionId("{agentCollection-id}").patch(agentCollection);


```