---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelsexternalconnectors "github.com/microsoftgraph/msgraph-sdk-go/models/externalconnectors"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsexternalconnectors.NewIdentity()
id := "e5477431-1038-484e-bf69-1dfedb97a110"
requestBody.SetId(&id) 
type := graphmodels.GROUP_IDENTITYTYPE 
requestBody.SetType(&type) 

result, err := graphClient.External().Connections().ByConnectionId("externalConnection-id").Groups().ByGroupId("externalGroup-id").Members().Post(context.Background(), requestBody, nil)


```