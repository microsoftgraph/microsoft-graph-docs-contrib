---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.exportpersonaldata.ExportPersonalDataPostRequestBody exportPersonalDataPostRequestBody = new com.microsoft.graph.beta.users.item.exportpersonaldata.ExportPersonalDataPostRequestBody();
exportPersonalDataPostRequestBody.setStorageLocation("storageLocation-value");
graphClient.users().byUserId("{user-id}").exportPersonalData().post(exportPersonalDataPostRequestBody);


```