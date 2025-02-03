---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.onenote.sections.item.copytosectiongroup.CopyToSectionGroupPostRequestBody copyToSectionGroupPostRequestBody = new com.microsoft.graph.beta.users.item.onenote.sections.item.copytosectiongroup.CopyToSectionGroupPostRequestBody();
copyToSectionGroupPostRequestBody.setId("id-value");
copyToSectionGroupPostRequestBody.setGroupId("groupId-value");
copyToSectionGroupPostRequestBody.setRenameAs("renameAs-value");
var result = graphClient.me().onenote().sections().byOnenoteSectionId("{onenoteSection-id}").copyToSectionGroup().post(copyToSectionGroupPostRequestBody);


```