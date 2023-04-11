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


requestBody := graphmodels.NewExternalConnection()
id := "contosohr"
requestBody.SetId(&id) 
name := "Contoso HR"
requestBody.SetName(&name) 
description := "Connection to index Contoso HR system"
requestBody.SetDescription(&description) 

result, err := graphClient.External().Connections().Post(context.Background(), requestBody, nil)


```