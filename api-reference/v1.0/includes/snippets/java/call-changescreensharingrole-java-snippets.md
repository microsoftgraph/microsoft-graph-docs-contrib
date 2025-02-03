---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.changescreensharingrole.ChangeScreenSharingRolePostRequestBody changeScreenSharingRolePostRequestBody = new com.microsoft.graph.communications.calls.item.changescreensharingrole.ChangeScreenSharingRolePostRequestBody();
changeScreenSharingRolePostRequestBody.setRole(ScreenSharingRole.Viewer);
graphClient.communications().calls().byCallId("{call-id}").changeScreenSharingRole().post(changeScreenSharingRolePostRequestBody);


```