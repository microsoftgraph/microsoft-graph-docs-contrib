TODO:???

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].CloudLicensing.UsageRights.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)";
});


```