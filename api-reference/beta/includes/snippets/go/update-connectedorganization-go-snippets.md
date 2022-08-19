---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewConnectedOrganization()
displayName := "Connected organization new name"
requestBody.SetDisplayName(&displayName) 
description := "Connected organization new description"
requestBody.SetDescription(&description) 
state := graphmodels.CONFIGURED_CONNECTEDORGANIZATIONSTATE 
requestBody.SetState(&state) 

graphClient.IdentityGovernance().EntitlementManagement().ConnectedOrganizationsById("connectedOrganization-id").Patch(requestBody)


```