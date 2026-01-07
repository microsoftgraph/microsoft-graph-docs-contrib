---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.identities.sensorcandidates.microsoftgraphsecurityactivate.ActivatePostRequestBody activatePostRequestBody = new com.microsoft.graph.beta.security.identities.sensorcandidates.microsoftgraphsecurityactivate.ActivatePostRequestBody();
LinkedList<String> serverIds = new LinkedList<String>();
serverIds.add("c0633ebb-8cfb-f17a-0b9e-83aa661f53a3");
activatePostRequestBody.setServerIds(serverIds);
graphClient.security().identities().sensorCandidates().microsoftGraphSecurityActivate().post(activatePostRequestBody);


```