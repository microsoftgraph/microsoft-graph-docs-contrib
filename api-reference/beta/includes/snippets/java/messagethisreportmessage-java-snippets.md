---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.messages.item.reportmessage.ReportMessagePostRequestBody reportMessagePostRequestBody = new com.microsoft.graph.beta.users.item.messages.item.reportmessage.ReportMessagePostRequestBody();
reportMessagePostRequestBody.setIsMessageMoveRequested(true);
reportMessagePostRequestBody.setReportAction(ReportAction.Junk);
var result = graphClient.me().messages().byMessageId("{message-id}").reportMessage().post(reportMessagePostRequestBody);


```