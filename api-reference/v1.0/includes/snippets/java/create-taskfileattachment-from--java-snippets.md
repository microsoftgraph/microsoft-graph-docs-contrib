---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TaskFileAttachment attachmentBase = new TaskFileAttachment();
attachmentBase.setOdataType("#microsoft.graph.taskFileAttachment");
attachmentBase.setName("smile");
byte[] contentBytes = Base64.getDecoder().decode("a0b1c76de9f7=");
attachmentBase.setContentBytes(contentBytes);
attachmentBase.setContentType("image/gif");
AttachmentBase result = graphClient.me().todo().lists().byTodoTaskListId("{todoTaskList-id}").tasks().byTodoTaskId("{todoTask-id}").attachments().post(attachmentBase);


```