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


requestBody := graphmodelsexternalconnectors.NewIdentity()
id := "e811976d-83df-4cbd-8b9b-5215b18aa874"
requestBody.SetId(&id) 
type := graphmodels.USER_IDENTITYTYPE 
requestBody.SetType(&type) 

result, err := graphClient.External().Connections().ByConnectionId("externalConnection-id").Groups().ByGroupId("externalGroup-id").Members().Post(context.Background(), requestBody, nil)


```