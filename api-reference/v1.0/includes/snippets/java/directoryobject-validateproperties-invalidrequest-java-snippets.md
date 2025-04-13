---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.directoryobjects.validateproperties.ValidatePropertiesPostRequestBody validatePropertiesPostRequestBody = new com.microsoft.graph.directoryobjects.validateproperties.ValidatePropertiesPostRequestBody();
validatePropertiesPostRequestBody.setEntityType("Group");
validatePropertiesPostRequestBody.setDisplayName("test");
validatePropertiesPostRequestBody.setMailNickname("test");
validatePropertiesPostRequestBody.setOnBehalfOfUserId(UUID.fromString("onBehalfOfUserId-value"));
graphClient.directoryObjects().validateProperties().post(validatePropertiesPostRequestBody);


```