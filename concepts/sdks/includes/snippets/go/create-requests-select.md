<!-- markdownlint-disable MD041 -->

```go
// GET https://graph.microsoft.com/v1.0/me?$select=displayName,jobTitle

import me "github.com/microsoftgraph/msgraph-sdk-go/me"

query := me.MeRequestBuilderGetQueryParameters{
    Select_escaped: []string{"displayName", "jobTitle"},
}

options := me.MeRequestBuilderGetOptions{
    Q: &query,
}

result, err := client.Me().Get(&options)
```
