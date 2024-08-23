---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.onenote.sections.item.copytonotebook.CopyToNotebookPostRequestBody copyToNotebookPostRequestBody = new com.microsoft.graph.beta.users.item.onenote.sections.item.copytonotebook.CopyToNotebookPostRequestBody();
copyToNotebookPostRequestBody.setId("id-value");
copyToNotebookPostRequestBody.setGroupId("groupId-value");
copyToNotebookPostRequestBody.setRenameAs("renameAs-value");
var result = graphClient.me().onenote().sections().byOnenoteSectionId("{onenoteSection-id}").copyToNotebook().post(copyToNotebookPostRequestBody);


```