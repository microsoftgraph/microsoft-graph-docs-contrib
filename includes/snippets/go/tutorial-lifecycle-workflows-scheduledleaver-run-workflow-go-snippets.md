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
id := "df744d9e-2148-4922-88a8-633896c1e929"
user.SetId(&id) 

subjects := []graphmodels.userable {
	user,
}
requestBody.SetSubjects(subjects)

graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").MicrosoftGraphIdentityGovernanceActivate().Post(context.Background(), requestBody, nil)


```