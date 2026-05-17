---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AgentInstance agentInstance = new AgentInstance();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("agentCardManifest@odata.bind", "https://graph.microsoft.com/beta/agentRegistry/agentCardManifests('employee-assistant')");
agentInstance.setAdditionalData(additionalData);
AgentInstance result = graphClient.agentRegistry().agentInstances().byAgentInstanceId("{agentInstance-id}").patch(agentInstance);


```