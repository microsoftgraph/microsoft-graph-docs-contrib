---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.todo.lists.item.tasks.item.attachments.createuploadsession.CreateUploadSessionPostRequestBody createUploadSessionPostRequestBody = new com.microsoft.graph.users.item.todo.lists.item.tasks.item.attachments.createuploadsession.CreateUploadSessionPostRequestBody();
AttachmentInfo attachmentInfo = new AttachmentInfo();
attachmentInfo.setAttachmentType(AttachmentType.File);
attachmentInfo.setName("flower");
attachmentInfo.setSize(3483322L);
createUploadSessionPostRequestBody.setAttachmentInfo(attachmentInfo);
var result = graphClient.me().todo().lists().byTodoTaskListId("{todoTaskList-id}").tasks().byTodoTaskId("{todoTask-id}").attachments().createUploadSession().post(createUploadSessionPostRequestBody);


```