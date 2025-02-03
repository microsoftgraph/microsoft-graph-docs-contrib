---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.directory.inboundshareduserprofiles.item.exportpersonaldata.ExportPersonalDataPostRequestBody exportPersonalDataPostRequestBody = new com.microsoft.graph.beta.directory.inboundshareduserprofiles.item.exportpersonaldata.ExportPersonalDataPostRequestBody();
exportPersonalDataPostRequestBody.setStorageLocation("MyStorageAccount");
graphClient.directory().inboundSharedUserProfiles().byInboundSharedUserProfileUserId("{inboundSharedUserProfile-userId}").exportPersonalData().post(exportPersonalDataPostRequestBody);


```