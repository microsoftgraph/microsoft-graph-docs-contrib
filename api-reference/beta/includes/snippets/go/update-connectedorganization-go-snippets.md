---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewConnectedOrganization()
displayName := "Connected organization new name"
requestBody.SetDisplayName(&displayName) 
description := "Connected organization new description"
requestBody.SetDescription(&description) 
state := graphmodels.CONFIGURED_CONNECTEDORGANIZATIONSTATE 
requestBody.SetState(&state) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().ConnectedOrganizationsById("connectedOrganization-id").Patch(context.Background(), requestBody, nil)


```