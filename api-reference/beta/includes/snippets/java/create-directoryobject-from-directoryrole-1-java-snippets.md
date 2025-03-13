---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ReferenceCreate referenceCreate = new com.microsoft.graph.beta.models.ReferenceCreate();
referenceCreate.setOdataId("https://graph.microsoft.com/beta/users/0f933635-5b77-4cf4-a577-f78a5eb090a2");
graphClient.directoryRoles().byDirectoryRoleId("{directoryRole-id}").members().ref().post(referenceCreate);


```