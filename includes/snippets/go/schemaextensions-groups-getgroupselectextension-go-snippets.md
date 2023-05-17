---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "graphlearn_courses/courseId eq '123'"

requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"displayName","id","description","graphlearn_courses"},
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().Get(context.Background(), configuration)


```