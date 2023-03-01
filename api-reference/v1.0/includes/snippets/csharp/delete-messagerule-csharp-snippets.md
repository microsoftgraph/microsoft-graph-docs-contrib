---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Me.MailFolders["{mailFolder-id}"].MessageRules["{messageRule-id}"].DeleteAsync();


```