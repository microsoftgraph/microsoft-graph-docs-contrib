---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPrintTaskDefinition()
displayName := "Test TaskDefinitionName"
requestBody.SetDisplayName(&displayName) 
createdBy := graphmodels.NewAppIdentity()
displayName := "Requesting App Display Name"
createdBy.SetDisplayName(&displayName) 
requestBody.SetCreatedBy(createdBy)

result, err := graphClient.Print().TaskDefinitions().Post(context.Background(), requestBody, nil)


```