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



requestFilter := "isof('microsoft.graph.user') or isof('microsoft.graph.group')"

requestParameters := &graphdirectoryobjects.DirectoryObjectsDelta()RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"microsoft.graph.user/surname","microsoft.graph.group/displayName"},
}
configuration := &graphdirectoryobjects.DirectoryObjectsDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta, err := graphClient.DirectoryObjects().Delta().Get(context.Background(), configuration)


```