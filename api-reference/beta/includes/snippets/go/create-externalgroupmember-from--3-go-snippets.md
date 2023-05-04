---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//externalConnectors"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentity()
id := "1431b9c38ee647f6a"
requestBody.SetId(&id) 
type := graphmodels.EXTERNALGROUP_IDENTITYTYPE 
requestBody.SetType(&type) 

result, err := graphClient.External().Connections().ByConnectionId("externalConnection-id").Groups().ByGroupId("externalGroup-id").Members().Post(context.Background(), requestBody, nil)


```