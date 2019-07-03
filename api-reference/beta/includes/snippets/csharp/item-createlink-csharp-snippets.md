---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "view";

var scope = "anonymous";

await graphClient.Me.Drive.Items["{itemId}"]
	.CreateLink(type,scope,expirationDateTime,password,message,recipients)
	.Request()
	.PostAsync();

```