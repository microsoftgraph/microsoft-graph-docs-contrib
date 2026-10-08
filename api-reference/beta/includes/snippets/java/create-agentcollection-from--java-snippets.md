---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AgentCollection agentCollection = new AgentCollection();
agentCollection.setId("Security Copilot Platform Workspace: 001");
LinkedList<String> ownerIds = new LinkedList<String>();
ownerIds.add("daf58b0e-44e1-433c-b6b0-ca70cae320b8");
ownerIds.add("b9108c41-d2d2-4e78-b073-92f57b752bd0");
agentCollection.setOwnerIds(ownerIds);
agentCollection.setManagedBy("719cc904-9700-4e08-9941-fd826cc84c60");
agentCollection.setOriginatingStore("Microsoft Security Copilot");
agentCollection.setCreatedBy("d47bffae-411a-4de9-8548-05e79bc01f0d");
agentCollection.setDisplayName("Conditional Access Agents");
agentCollection.setDescription("A collection of agents to manage your organizations conditional access policies");
AgentCollection result = graphClient.agentRegistry().agentCollections().post(agentCollection);


```