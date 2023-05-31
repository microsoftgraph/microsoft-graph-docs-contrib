<!-- markdownlint-disable MD041 -->

```go
// GET https://graph.microsoft.com/v1.0/me/calendarview?$select=subject,start,end&$filter=<some condition>&orderBy=start/dateTime&startDateTime=<start>&endDateTime=<end>

import (
    "github.com/microsoftgraph/msgraph-sdk-go/users"
    "context"
)

startDateTime := "2021-11-18T00:00:00"
endDateTime := "2021-11-19T00:00:00"
filter := "<filter condition>"

query := users.ItemCalendarViewRequestBuilderGetQueryParameters{
    Filter:  &filter,
    Orderby: []string{"start/dateTime"},
    Select: []string{
        "subject",
        "start",
        "end",
    },
    StartDateTime: &startDateTime,
    EndDateTime:   &endDateTime,
}

options := users.ItemCalendarViewRequestBuilderGetRequestConfiguration{
    QueryParameters: &query,
}

result, err := client.Me().CalendarView().Get(context.Background(), &options)
```
