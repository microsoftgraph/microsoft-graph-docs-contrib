---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Education.Classes["{educationClass-id}"].AssignmentCategories["{educationCategory-id}"].DeleteAsync();


```