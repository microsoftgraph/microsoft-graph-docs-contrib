---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewActivatePostRequestBody()


user := graphmodels.NewUser()
id := "df744d9e-2148-4922-88a8-633896c1e929"
user.SetId(&id) 

subjects := []graphmodels.Objectable {
	user,

}
requestBody.SetSubjects(subjects)

graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").IdentityGovernanceActivate().Post(context.Background(), requestBody, nil)


```