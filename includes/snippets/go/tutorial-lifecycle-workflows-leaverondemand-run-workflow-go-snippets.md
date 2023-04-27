---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/IdentityGovernance/LifecycleWorkflows/Workflows/Item/IdentityGovernanceActivate"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewActivatePostRequestBody()


user := graphmodels.NewUser()
id := "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
user.SetId(&id) 

subjects := []graphmodels.Objectable {
	user,

}
requestBody.SetSubjects(subjects)

graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").IdentityGovernanceActivate().Post(context.Background(), requestBody, nil)


```