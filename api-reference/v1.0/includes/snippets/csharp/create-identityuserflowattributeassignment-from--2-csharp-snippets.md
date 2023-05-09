---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityUserFlowAttributeAssignment
{
	IsOptional = false,
	RequiresVerification = false,
	UserInputType = IdentityUserFlowAttributeInputType.TextBox,
	DisplayName = "Shoe size",
	UserAttributeValues = new List<UserAttributeValuesItem>
	{
	},
	UserAttribute = new IdentityUserFlowAttribute
	{
		Id = "extension_guid_shoeSize",
	},
};
var result = await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].UserAttributeAssignments.PostAsync(requestBody);


```