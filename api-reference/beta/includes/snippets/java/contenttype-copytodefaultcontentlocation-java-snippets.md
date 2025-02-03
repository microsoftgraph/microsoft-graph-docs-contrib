---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.sites.item.contenttypes.item.copytodefaultcontentlocation.CopyToDefaultContentLocationPostRequestBody copyToDefaultContentLocationPostRequestBody = new com.microsoft.graph.beta.sites.item.contenttypes.item.copytodefaultcontentlocation.CopyToDefaultContentLocationPostRequestBody();
ItemReference sourceFile = new ItemReference();
SharepointIds sharepointIds = new SharepointIds();
sharepointIds.setListId("e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0");
sharepointIds.setListItemId("2");
sourceFile.setSharepointIds(sharepointIds);
copyToDefaultContentLocationPostRequestBody.setSourceFile(sourceFile);
copyToDefaultContentLocationPostRequestBody.setDestinationFileName("newname.txt");
graphClient.sites().bySiteId("{site-id}").contentTypes().byContentTypeId("{contentType-id}").copyToDefaultContentLocation().post(copyToDefaultContentLocationPostRequestBody);


```