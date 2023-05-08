---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Groups.Item.ValidateProperties.ValidatePropertiesPostRequestBody
{
	DisplayName = "Myprefix_test_mysuffix",
	MailNickname = "Myprefix_test_mysuffix",
	OnBehalfOfUserId = Guid.Parse("onBehalfOfUserId-value"),
};
await graphClient.Groups["{group-id}"].ValidateProperties.PostAsync(requestBody);


```