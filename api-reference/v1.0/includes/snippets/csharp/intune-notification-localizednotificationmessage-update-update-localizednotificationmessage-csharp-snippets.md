---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new LocalizedNotificationMessage
{
	OdataType = "#microsoft.graph.localizedNotificationMessage",
	Locale = "Locale value",
	Subject = "Subject value",
	MessageTemplate = "Message Template value",
	IsDefault = true,
};
var result = await graphClient.DeviceManagement.NotificationMessageTemplates["{notificationMessageTemplate-id}"].LocalizedNotificationMessages["{localizedNotificationMessage-id}"].PatchAsync(requestBody);


```