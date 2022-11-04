---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAppRoleAssignmentsPostRequestBody()
additionalData := map[string]interface{}{
	"principalId" : "4628e7df-dff3-407c-a08f-75f08c0806dc", 
	"principalType" : "User", 
	"appRoleId" : "18d14569-c3bd-439b-9a66-3a2aee01d14f", 
	"resourceId" : "a8cac399-cde5-4516-a674-819503c61313", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ServicePrincipalsById("servicePrincipal-id").AppRoleAssignments().Post(context.Background(), requestBody, nil)


```