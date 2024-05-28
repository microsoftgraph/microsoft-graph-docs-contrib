---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssearch "github.com/microsoftgraph/msgraph-sdk-go/models/search"
	  //other-imports
)

requestBody := graphmodelssearch.NewQna()
description := "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend."
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
qnas, err := graphClient.Search().Qnas().ByQnaId("qna-id").Patch(context.Background(), requestBody, nil)


```