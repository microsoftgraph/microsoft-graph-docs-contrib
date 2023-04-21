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


requestBody := graphmodels.NewCustomSecurityAttributeDefinition()
description := "Target completion date (YYYY/MM/DD)"
requestBody.SetDescription(&description) 

result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().ByCustomSecurityAttributeDefinitionId("customSecurityAttributeDefinition-id").Patch(context.Background(), requestBody, nil)


```