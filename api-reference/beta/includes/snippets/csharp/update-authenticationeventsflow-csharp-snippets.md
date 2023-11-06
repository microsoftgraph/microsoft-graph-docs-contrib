---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/beta/identityProviders/Google-OAUTH",
};
await graphClient.Identity.AuthenticationEventsFlows["{authenticationEventsFlow-id}"].GraphExternalUsersSelfServiceSignUpEventsFlow.OnAuthenticationMethodLoadStart.GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp.IdentityProviders.Ref.PostAsync(requestBody);


```