<!-- markdownlint-disable MD041 -->

```csharp
// GET https://graph.microsoft.com/v1.0/me/messages?$select=subject,sender&$filter=<some condition>&orderBy=receivedDateTime

var messages = await graphClient.Me.Messages
    .GetAsync( requestConfig => 
                {
                    requestConfig.QueryParameters.Select = new string[] { "subject", "sender"};
                    requestConfig.QueryParameters.Filter = "<filter condition>";
                    requestConfig.QueryParameters.Orderby = new string[] { "receivedDateTime" };
                });
```
