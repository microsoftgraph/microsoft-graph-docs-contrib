---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identityprotection.riskyagents.dismiss.DismissPostRequestBody dismissPostRequestBody = new com.microsoft.graph.beta.identityprotection.riskyagents.dismiss.DismissPostRequestBody();
LinkedList<String> agentIds = new LinkedList<String>();
agentIds.add("29f270bb-4d23-4f68-8a57-dc73dc0d4caf");
agentIds.add("20f91ec9-d140-4d90-9cd9-f618587a1471");
dismissPostRequestBody.setAgentIds(agentIds);
graphClient.identityProtection().riskyAgents().dismiss().post(dismissPostRequestBody);


```