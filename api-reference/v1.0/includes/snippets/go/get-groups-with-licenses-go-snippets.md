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



requestFilter := "assignedLicenses/any()"

requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Select: [] string {"id","assignedLicenses"},
	Filter: &requestFilter,
	Expand: [] string {"members($select=id,displayName)"},
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().Get(context.Background(), configuration)


```