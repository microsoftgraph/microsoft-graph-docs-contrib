---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventsFlows.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/any(attribute:attribute/id eq 'city')";
});


```