---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.windows.updates.updatableassets.microsoftgraphwindowsupdatesunenrollassetsbyid.UnenrollAssetsByIdPostRequestBody unenrollAssetsByIdPostRequestBody = new com.microsoft.graph.beta.admin.windows.updates.updatableassets.microsoftgraphwindowsupdatesunenrollassetsbyid.UnenrollAssetsByIdPostRequestBody();
unenrollAssetsByIdPostRequestBody.setUpdateCategory(com.microsoft.graph.beta.models.windowsupdates.UpdateCategory.Feature);
unenrollAssetsByIdPostRequestBody.setMemberEntityType("#microsoft.graph.windowsUpdates.azureADDevice");
LinkedList<String> ids = new LinkedList<String>();
ids.add("String");
ids.add("String");
ids.add("String");
unenrollAssetsByIdPostRequestBody.setIds(ids);
graphClient.admin().windows().updates().updatableAssets().microsoftGraphWindowsUpdatesUnenrollAssetsById().post(unenrollAssetsByIdPostRequestBody);


```