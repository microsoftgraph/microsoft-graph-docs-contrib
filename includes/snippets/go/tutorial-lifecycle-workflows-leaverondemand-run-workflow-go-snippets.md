---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphidentitygovernance.NewActivatePostRequestBody()


user := graphmodels.NewUser()
id := "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
user.SetId(&id) 

subjects := []graphmodels.userable {
	user,
}
requestBody.SetSubjects(subjects)

graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").MicrosoftGraphIdentityGovernanceActivate().Post(context.Background(), requestBody, nil)


```