---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.directoryobjects.validateproperties.ValidatePropertiesPostRequestBody validatePropertiesPostRequestBody = new com.microsoft.graph.beta.directoryobjects.validateproperties.ValidatePropertiesPostRequestBody();
validatePropertiesPostRequestBody.setEntityType("Group");
validatePropertiesPostRequestBody.setDisplayName("Myprefix_test_mysuffix");
validatePropertiesPostRequestBody.setMailNickname("Myprefix_test_mysuffix");
validatePropertiesPostRequestBody.setOnBehalfOfUserId(UUID.fromString("onBehalfOfUserId-value"));
graphClient.directoryObjects().validateProperties().post(validatePropertiesPostRequestBody);


```