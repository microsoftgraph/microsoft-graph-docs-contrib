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
id := "1431b9c38ee647f6a"
requestBody.SetId(&id) 
type := graphmodels.EXTERNALGROUP_IDENTITYTYPE 
requestBody.SetType(&type) 

members, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Groups().ByExternalGroupId("externalGroup-id").Members().Post(context.Background(), requestBody, nil)


```