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


requestBody := graphmodelsexternalconnectors.NewExternalGroup()
id := "31bea3d537902000"
requestBody.SetId(&id) 
displayName := "Contoso Marketing"
requestBody.SetDisplayName(&displayName) 
description := "The product marketing team"
requestBody.SetDescription(&description) 

result, err := graphClient.External().Connections().ByConnectionId("externalConnection-id").Groups().Post(context.Background(), requestBody, nil)


```