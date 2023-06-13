<!-- markdownlint-disable MD041 -->

```go
//  GET https://graph.microsoft.com/v1.0/me/events

import (
    abstractions "github.com/microsoft/kiota-abstractions-go"
    "github.com/microsoftgraph/msgraph-sdk-go/users"
    "context"
)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")

options := users.ItemEventsRequestBuilderGetRequestConfiguration{
    Headers: headers,
}

result, err := client.Me().Events().Get(context.Background(), &options)
```
