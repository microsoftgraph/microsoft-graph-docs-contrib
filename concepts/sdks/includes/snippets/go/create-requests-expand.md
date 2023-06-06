<!-- markdownlint-disable MD041 -->

```go
// GET https://graph.microsoft.com/v1.0/me/mailfolders/inbox/messages/{message-id}?$expand=attachments

import (
    "github.com/microsoftgraph/msgraph-sdk-go/users"
    "context"
)

mailFolderId := "inbox"
messageId := "AQMkAGUy..."

expand := users.ItemMailFoldersItemMessagesMessageItemRequestBuilderGetQueryParameters{
    Expand: []string{"attachments"},
}

options := users.ItemMailFoldersItemMessagesMessageItemRequestBuilderGetRequestConfiguration{
    QueryParameters: &expand,
}

result, err := client.
    Me().
    MailFolders().
    ByMailFolderId(mailFolderId).
    Messages().
    ByMessageId(messageId).
    Get(context.Background(), &options)
```
