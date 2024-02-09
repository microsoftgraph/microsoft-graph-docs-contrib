---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.groups.item.validateproperties.ValidatePropertiesPostRequestBody validatePropertiesPostRequestBody = new com.microsoft.graph.groups.item.validateproperties.ValidatePropertiesPostRequestBody();
validatePropertiesPostRequestBody.setDisplayName("Myprefix_test_mysuffix");
validatePropertiesPostRequestBody.setMailNickname("Myprefix_test_mysuffix");
validatePropertiesPostRequestBody.setOnBehalfOfUserId(UUID.fromString("onBehalfOfUserId-value"));
graphClient.groups().byGroupId("{group-id}").validateProperties().post(validatePropertiesPostRequestBody);


```