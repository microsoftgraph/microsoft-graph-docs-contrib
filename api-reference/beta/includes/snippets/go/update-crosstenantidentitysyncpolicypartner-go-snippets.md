---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCrossTenantIdentitySyncPolicyPartner()
additionalData := map[string]interface{}{
userSyncInbound := graphmodels.New()
	isSyncAllowed := true
userSyncInbound.SetIsSyncAllowed(&isSyncAllowed) 
	requestBody.SetUserSyncInbound(userSyncInbound)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Policies().CrossTenantAccessPolicy().PartnersById("crossTenantAccessPolicyConfigurationPartner-tenantId").IdentitySynchronization().Patch(context.Background(), requestBody, nil)


```