---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGroup()
description := "Library Assist"
requestBody.SetDescription(&description) 
displayName := "Library Assist"
requestBody.SetDisplayName(&displayName) 
groupTypes := []string {
	"Unified",

}
requestBody.SetGroupTypes(groupTypes)
mailEnabled := true
requestBody.SetMailEnabled(&mailEnabled) 
mailNickname := "library-help"
requestBody.SetMailNickname(&mailNickname) 

result, err := graphClient.Groups().ByGroupId("group-id").Patch(context.Background(), requestBody, nil)


```