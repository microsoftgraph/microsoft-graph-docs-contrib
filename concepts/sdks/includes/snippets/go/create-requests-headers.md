<!-- markdownlint-disable MD041 -->

```go
//  GET https://graph.microsoft.com/v1.0/me/events

import (
    events "github.com/microsoftgraph/msgraph-sdk-go/me/events"
    "context"
)

options := events.EventsRequestBuilderGetOptions{
    H: map[string]string{
        "Prefer": "outlook.timezone=\"Pacific Standard Time\"",
    },
}

result, err := client.Me().Events().Get(context.Background(), &options)
```
