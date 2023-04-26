---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")

configuration := &graphconfig.ItemMailFolderItemMessagesDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Messages().Delta().Get(context.Background(), configuration)


```