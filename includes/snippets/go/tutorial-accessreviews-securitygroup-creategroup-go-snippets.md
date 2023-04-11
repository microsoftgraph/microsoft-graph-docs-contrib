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
description := "Building security"
requestBody.SetDescription(&description) 
displayName := "Building security"
requestBody.SetDisplayName(&displayName) 
groupTypes := []string {

}
requestBody.SetGroupTypes(groupTypes)
mailEnabled := false
requestBody.SetMailEnabled(&mailEnabled) 
mailNickname := "buildingsecurity"
requestBody.SetMailNickname(&mailNickname) 
securityEnabled := true
requestBody.SetSecurityEnabled(&securityEnabled) 
additionalData := map[string]interface{}{
	odataBind := []string {
		"https://graph.microsoft.com/beta/users/d3bcdff4-4f80-4418-a65e-7bf3778c5dca",

	}
	odataBind := []string {
		"https://graph.microsoft.com/beta/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
		"https://graph.microsoft.com/beta/users/bf59c5ba-5304-4c9b-9192-e5a4cb8444e7",

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Groups().Post(context.Background(), requestBody, nil)


```