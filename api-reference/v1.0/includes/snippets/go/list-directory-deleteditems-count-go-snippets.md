---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestCount := true

requestParameters := &graphconfig.DirectoryDeletedItemsGraph.groupRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Orderby: [] string {"deletedDateTime asc"},
	Select: [] string {"id","DisplayName","deletedDateTime"},
}
configuration := &graphconfig.DirectoryDeletedItemsGraph.groupRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().DeletedItems().GraphGroup().Get(context.Background(), configuration)


```