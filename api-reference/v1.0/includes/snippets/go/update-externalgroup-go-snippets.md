---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models//externalConnectors"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewExternalGroup()
displayName := "Contoso Marketing"
requestBody.SetDisplayName(&displayName) 
description := "The product marketing team"
requestBody.SetDescription(&description) 

result, err := graphClient.External().ConnectionsById("externalConnection-id").GroupsById("externalGroup-id").Patch(context.Background(), requestBody, nil)


```