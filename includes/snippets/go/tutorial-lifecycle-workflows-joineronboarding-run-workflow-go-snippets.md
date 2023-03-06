---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewActivatePostRequestBody()


user := graphmodels.NewUser()
id := "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
user.SetId(&id) 

subjects := []graphmodels.Objectable {
	user,

}
requestBody.SetSubjects(subjects)

graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").IdentityGovernanceActivate().Post(context.Background(), requestBody, nil)


```