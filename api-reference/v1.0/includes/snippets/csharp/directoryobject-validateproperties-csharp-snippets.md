---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.DirectoryObjects.MicrosoftGraphValidateProperties.ValidatePropertiesPostRequestBody
{
	EntityType = "Group",
	DisplayName = "Myprefix_test_mysuffix",
	MailNickname = "Myprefix_test_mysuffix",
	OnBehalfOfUserId = Guid.Parse("onBehalfOfUserId-value"),
};
await graphClient.DirectoryObjects.MicrosoftGraphValidateProperties.PostAsync(requestBody);


```