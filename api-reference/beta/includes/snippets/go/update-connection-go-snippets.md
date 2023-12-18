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
name := "Contoso HR Service Tickets"
requestBody.SetName(&name) 
description := "Connection to index HR service tickets"
requestBody.SetDescription(&description) 

connections, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Patch(context.Background(), requestBody, nil)


```