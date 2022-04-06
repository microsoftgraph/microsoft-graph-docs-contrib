---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var verifiedPublisherId = "1234567";

await graphClient.Applications["{application-id}"]
	.SetVerifiedPublisher(verifiedPublisherId)
	.Request()
	.PostAsync();

```