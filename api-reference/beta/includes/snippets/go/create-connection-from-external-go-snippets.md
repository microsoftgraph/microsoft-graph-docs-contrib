---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsexternalconnectors "github.com/microsoftgraph/msgraph-beta-sdk-go/models/externalconnectors"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsexternalconnectors.NewExternalConnection()
id := "contosohr"
requestBody.SetId(&id) 
name := "Contoso HR"
requestBody.SetName(&name) 
description := "Connection to index Contoso HR system"
requestBody.SetDescription(&description) 

connections, err := graphClient.External().Connections().Post(context.Background(), requestBody, nil)


```