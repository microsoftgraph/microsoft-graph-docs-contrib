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


requestBody := graphmodels.NewAllowedValue()
id := "Alpine"
requestBody.SetId(&id) 
isActive := true
requestBody.SetIsActive(&isActive) 

result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().ByCustomSecurityAttributeDefinitionId("customSecurityAttributeDefinition-id").AllowedValues().Post(context.Background(), requestBody, nil)


```