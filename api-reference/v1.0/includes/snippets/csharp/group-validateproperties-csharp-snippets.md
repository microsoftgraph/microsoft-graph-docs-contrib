---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Groups.Item.MicrosoftGraphValidateProperties.ValidatePropertiesPostRequestBody
{
	DisplayName = "Myprefix_test_mysuffix",
	MailNickname = "Myprefix_test_mysuffix",
	OnBehalfOfUserId = Guid.Parse("onBehalfOfUserId-value"),
};
await graphClient.Groups["group-id"].MicrosoftGraphValidateProperties.PostAsync(requestBody);


```