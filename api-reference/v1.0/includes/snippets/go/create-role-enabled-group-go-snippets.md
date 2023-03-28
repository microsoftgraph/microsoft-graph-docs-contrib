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
description := "Group assignable to a role"
requestBody.SetDescription(&description) 
displayName := "Role assignable group"
requestBody.SetDisplayName(&displayName) 
groupTypes := []string {
	"Unified",

}
requestBody.SetGroupTypes(groupTypes)
isAssignableToRole := true
requestBody.SetIsAssignableToRole(&isAssignableToRole) 
mailEnabled := true
requestBody.SetMailEnabled(&mailEnabled) 
securityEnabled := true
requestBody.SetSecurityEnabled(&securityEnabled) 
mailNickname := "contosohelpdeskadministrators"
requestBody.SetMailNickname(&mailNickname) 
additionalData := map[string]interface{}{
	odataBind := []string {
		"https://graph.microsoft.com/v1.0/users/99e44b05-c10b-4e95-a523-e2732bbaba1e",

	}
	odataBind := []string {
		"https://graph.microsoft.com/v1.0/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0",
		"https://graph.microsoft.com/v1.0/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Groups().Post(context.Background(), requestBody, nil)


```