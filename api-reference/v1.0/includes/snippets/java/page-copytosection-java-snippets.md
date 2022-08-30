---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.onenote.pages.item.copytosection.CopyToSectionPostRequestBody copyToSectionPostRequestBody = new com.microsoft.graph.users.item.onenote.pages.item.copytosection.CopyToSectionPostRequestBody();
copyToSectionPostRequestBody.setId("id-value");
copyToSectionPostRequestBody.setGroupId("groupId-value");
var result = graphClient.me().onenote().pages().byOnenotePageId("{onenotePage-id}").copyToSection().post(copyToSectionPostRequestBody);


```