---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ConditionalAccessSettings conditionalAccessSettings = new com.microsoft.graph.beta.models.networkaccess.ConditionalAccessSettings();
conditionalAccessSettings.setSignalingStatus(com.microsoft.graph.beta.models.networkaccess.Status.Disabled);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.context", "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess");
conditionalAccessSettings.setAdditionalData(additionalData);
com.microsoft.graph.models.networkaccess.ConditionalAccessSettings result = graphClient.networkAccess().settings().conditionalAccess().patch(conditionalAccessSettings);


```