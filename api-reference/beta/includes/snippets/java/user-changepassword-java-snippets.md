---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.changepassword.ChangePasswordPostRequestBody changePasswordPostRequestBody = new com.microsoft.graph.beta.users.item.changepassword.ChangePasswordPostRequestBody();
changePasswordPostRequestBody.setCurrentPassword("xWwvJ]6NMw+bWH-d");
changePasswordPostRequestBody.setNewPassword("0eM85N54wFxWwvJ]");
graphClient.me().changePassword().post(changePasswordPostRequestBody);


```