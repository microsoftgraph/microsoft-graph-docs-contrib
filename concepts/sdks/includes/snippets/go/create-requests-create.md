<!-- markdownlint-disable MD041 -->

```go
// POST https://graph.microsoft.com/v1.0/me/calendars

import (
    calendars "github.com/microsoftgraph/msgraph-sdk-go/me/calendars"
    graph "github.com/microsoftgraph/msgraph-sdk-go/models/microsoft/graph"
)

calendar := graph.NewCalendar()
name := "Volunteer"
calendar.SetName(&name)

options := calendars.CalendarsRequestBuilderPostOptions{
    Body: calendar,
}

result, err := client.Me().Calendars().Post(&options)
```
