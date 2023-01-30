---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentitySynchronizationPutRequestBody()
additionalData := map[string]interface{}{
	"displayName" : "Fabrikam", 
userSyncInbound := graphmodels.New()
	isSyncAllowed := true
userSyncInbound.SetIsSyncAllowed(&isSyncAllowed) 
	requestBody.SetUserSyncInbound(userSyncInbound)
}
requestBody.SetAdditionalData(additionalData)

graphClient.Policies().CrossTenantAccessPolicy().PartnersById("crossTenantAccessPolicyConfigurationPartner-tenantId").IdentitySynchronization().Put(context.Background(), requestBody, nil)


```