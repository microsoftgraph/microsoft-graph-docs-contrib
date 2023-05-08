---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Domains/Item/ForceDelete"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewForceDeletePostRequestBody()
disableUserAccounts := true
requestBody.SetDisableUserAccounts(&disableUserAccounts) 

graphClient.Domains().ByDomainId("domain-id").ForceDelete().Post(context.Background(), requestBody, nil)


```