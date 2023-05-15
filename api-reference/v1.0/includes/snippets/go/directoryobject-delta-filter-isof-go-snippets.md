---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/directoryobjects"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "isof or isof"

requestParameters := &graphconfig.DirectoryObjectsDelta()RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.DirectoryObjectsDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DirectoryObjects().Delta().Get(context.Background(), configuration)


```