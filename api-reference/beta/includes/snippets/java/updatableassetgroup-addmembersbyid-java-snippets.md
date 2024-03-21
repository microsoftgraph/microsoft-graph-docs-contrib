---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.windows.updates.updatableassets.item.microsoftgraphwindowsupdatesaddmembersbyid.AddMembersByIdPostRequestBody addMembersByIdPostRequestBody = new com.microsoft.graph.beta.admin.windows.updates.updatableassets.item.microsoftgraphwindowsupdatesaddmembersbyid.AddMembersByIdPostRequestBody();
LinkedList<String> ids = new LinkedList<String>();
ids.add("String");
ids.add("String");
ids.add("String");
addMembersByIdPostRequestBody.setIds(ids);
addMembersByIdPostRequestBody.setMemberEntityType("#microsoft.graph.windowsUpdates.azureADDevice");
graphClient.admin().windows().updates().updatableAssets().byUpdatableAssetId("{updatableAsset-id}").microsoftGraphWindowsUpdatesAddMembersById().post(addMembersByIdPostRequestBody);


```