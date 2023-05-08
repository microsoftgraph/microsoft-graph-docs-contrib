---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityUserFlowAttribute
{
	DisplayName = "Hobby",
	Description = "Your hobby",
	DataType = IdentityUserFlowAttributeDataType.String,
};
var result = await graphClient.Identity.UserFlowAttributes.PostAsync(requestBody);


```