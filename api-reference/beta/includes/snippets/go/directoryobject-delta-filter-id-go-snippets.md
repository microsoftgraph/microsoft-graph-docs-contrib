---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectoryobjects "github.com/microsoftgraph/msgraph-beta-sdk-go/directoryobjects"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "id eq '87d349ed-44d7-43e1-9a83-5f2406dee5bd'"

requestParameters := &graphdirectoryobjects.DirectoryObjectsDelta()RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdirectoryobjects.DirectoryObjectsDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DirectoryObjects().Delta().Get(context.Background(), configuration)


```