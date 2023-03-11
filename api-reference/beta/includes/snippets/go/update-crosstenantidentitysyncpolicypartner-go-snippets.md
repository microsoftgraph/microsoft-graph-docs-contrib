---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewCrossTenantIdentitySyncPolicyPartner()
userSyncInbound := graphmodels.NewCrossTenantUserSyncInbound()
isSyncAllowed := true
userSyncInbound.SetIsSyncAllowed(&isSyncAllowed) 
requestBody.SetUserSyncInbound(userSyncInbound)

result, err := graphClient.Policies().CrossTenantAccessPolicy().PartnersById("crossTenantAccessPolicyConfigurationPartner-tenantId").IdentitySynchronization().Patch(context.Background(), requestBody, nil)


```