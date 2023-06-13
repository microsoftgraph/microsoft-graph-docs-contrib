<!-- markdownlint-disable MD041 -->

```go
//GET https://graph.microsoft.com/v1.0/me/calendarView

import (
    "github.com/microsoftgraph/msgraph-sdk-go/users"
    "context"
)

startDateTime := "2021-11-18T00:00:00"
endDateTime := "2021-11-19T00:00:00"

query := users.ItemCalendarViewRequestBuilderGetQueryParameters{
    StartDateTime: &startDateTime,
    EndDateTime:   &endDateTime,
}

options := users.ItemCalendarViewRequestBuilderGetRequestConfiguration{
    QueryParameters: &query,
}

result, err := client.Me().CalendarView().Get(context.Background(), &options)
```
