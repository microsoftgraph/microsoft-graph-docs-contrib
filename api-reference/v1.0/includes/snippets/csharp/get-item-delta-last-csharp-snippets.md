---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Me.Drive.Root
	.Delta("MzslMjM0OyUyMzE7MzsyM2YwNDVhMS1lNmRmLTQ1N2MtOGQ5NS1hNmViZDVmZWRhNWQ7NjM3OTQzNzQwODQ3NTcwMDAwOzU4NTk2OTY0NDslMjM7JTIzOyUyMzA")
	.Request()
	.GetAsync();

```