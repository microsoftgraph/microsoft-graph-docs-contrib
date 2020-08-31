<!-- markdownlint-disable MD041 -->

```csharp
    
// POST https://graph.microsoft.com/v1.0/me/calendars
GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = new Calendar
{
    Name = "Volunteer"
};

newCalendar = await graphClient.Me.Calendars
    .Request()
    .AddAsync(calendar);
```
