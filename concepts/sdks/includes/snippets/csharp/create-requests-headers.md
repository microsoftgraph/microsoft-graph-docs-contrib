<!-- markdownlint-disable MD041 -->

```csharp
//  GET https://graph.microsoft.com/v1.0/users/{user-id}/events

var events = await graphClient.Me.Events
    .GetAsync( requestConfig => 
                {
                    requestConfig.Headers.Add("Prefer", @"outlook.timezone=""Pacific Standard Time""");
                    requestConfig.QueryParameters.Select = new string[] {"subject", "body", "bodyPreview"};
                });
```
