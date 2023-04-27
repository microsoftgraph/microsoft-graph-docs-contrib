---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/CheckMemberGroups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCheckMemberGroupsPostRequestBody()
groupIds := []string {
	"fee2c45b-915a-4a64b130f4eb9e75525e",
	"4fe90ae065a-478b9400e0a0e1cbd540",

}
requestBody.SetGroupIds(groupIds)

result, err := graphClient.Me().CheckMemberGroups().Post(context.Background(), requestBody, nil)


```