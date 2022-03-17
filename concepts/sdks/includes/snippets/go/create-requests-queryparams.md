<!-- markdownlint-disable MD041 -->

```go
//GET https://graph.microsoft.com/v1.0/me/calendarView

import (
    cv "github.com/microsoftgraph/msgraph-sdk-go/me/calendarview"
)

startDateTime := "2021-11-18T00:00:00"
endDateTime := "2021-11-19T00:00:00"

query := cv.CalendarViewRequestBuilderGetQueryParameters{
    StartDateTime: &startDateTime,
    EndDateTime:   &endDateTime,
}

options := cv.CalendarViewRequestBuilderGetOptions{
    Q: &query,
}

result, err := client.Me().CalendarView().Get(&options)
```
