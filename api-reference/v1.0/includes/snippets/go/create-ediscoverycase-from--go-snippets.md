---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEdiscoveryCase()
displayName := "CONTOSO LITIGATION-005"
requestBody.SetDisplayName(&displayName) 
description := "Project Bazooka"
requestBody.SetDescription(&description) 
externalId := "324516"
requestBody.SetExternalId(&externalId) 

result, err := graphClient.Security().Cases().EdiscoveryCases().Post(context.Background(), requestBody, nil)


```