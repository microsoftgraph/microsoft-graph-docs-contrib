---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentCategories.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Deltatoken = "7ORzTfzlUEGDy6BRE3OC-3ePBbvLHCRe4aJ_hjaBKJxUHmn_ODgoM4xreLS7YRaxc-iACeqCQsT5Tb0u9vn6QXYflO6j0sRgRQlhcfR7DApZYl6uZqiXcR7H0G14btPqR761sKWNc0jgiczrHGF6dGfSQwsLzPT46og-84ArhOU.Jnxvkr08FE-QBvEYstYel3JZUrgwgTauo-GmpbdWeSA";
});


```