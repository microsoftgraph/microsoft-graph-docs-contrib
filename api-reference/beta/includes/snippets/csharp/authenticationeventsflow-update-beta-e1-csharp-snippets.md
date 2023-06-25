---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ExternalUsersSelfServiceSignUpEventsFlow
{
	OdataType = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
	DisplayName = "New user flow description",
	Priority = 200,
};
var result = await graphClient.Identity.AuthenticationEventsFlows["{authenticationEventsFlow-id}"].PatchAsync(requestBody);


```