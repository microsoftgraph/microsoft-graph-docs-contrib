---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/DirectoryObjects/Item/CheckMemberGroups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCheckMemberGroupsPostRequestBody()
groupIds := []string {
	"f448435d-3ca7-4073-8152-a1fd73c0fd09",
	"bd7c6263-4dd5-4ae8-8c96-556e1c0bece6",
	"93670da6-d731-4366-94b5-abed40b6016b",
	"f5484ab1-4d4d-41ec-a9b8-754b3957bfc7",
	"c9103f26-f3cf-4004-a611-2a14e81b8f79",

}
requestBody.SetGroupIds(groupIds)

result, err := graphClient.DirectoryObjects().ByDirectoryObjectId("directoryObject-id").CheckMemberGroups().Post(context.Background(), requestBody, nil)


```