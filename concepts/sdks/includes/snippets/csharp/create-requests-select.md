<!-- markdownlint-disable MD041 -->

```csharp
// GET https://graph.microsoft.com/v1.0/me?$select=displayName,jobTitle

var user = await graphClient.Me
    .GetAsync(requestConfiguration => 
    {
        requestConfiguration.QueryParameters.Select = new string[] { "displayName", "jobTitle"};
    });
```
