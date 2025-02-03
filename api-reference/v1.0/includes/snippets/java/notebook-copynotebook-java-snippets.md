---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.onenote.notebooks.item.copynotebook.CopyNotebookPostRequestBody copyNotebookPostRequestBody = new com.microsoft.graph.users.item.onenote.notebooks.item.copynotebook.CopyNotebookPostRequestBody();
copyNotebookPostRequestBody.setGroupId("groupId-value");
copyNotebookPostRequestBody.setRenameAs("renameAs-value");
var result = graphClient.me().onenote().notebooks().byNotebookId("{notebook-id}").copyNotebook().post(copyNotebookPostRequestBody);


```