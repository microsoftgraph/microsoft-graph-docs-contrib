<!-- markdownlint-disable MD041 -->

```csharp
//GET https://graph.microsoft.com/v1.0/me/calendarView

var calendar = await graphClient.Me.CalendarView
    .GetAsync(requestConfiguration => 
    {
        requestConfiguration.QueryParameters.StartDateTime = "2020-12-01T00:00:00Z";
        requestConfiguration.QueryParameters.EndDateTime = "2020-12-30T00:00:00Z";
    });
```
