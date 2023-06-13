<!-- markdownlint-disable MD041 -->

```go
// GET https://graph.microsoft.com/v1.0/me?$select=displayName,jobTitle

import "github.com/microsoftgraph/msgraph-sdk-go/users"

query := users.UserItemRequestBuilderGetQueryParameters{
    Select: []string{"displayName", "jobTitle"},
}

options := users.UserItemRequestBuilderGetRequestConfiguration{
    QueryParameters: &query,
}

result, err := client.Me().Get(context.Background(), &options)
```
