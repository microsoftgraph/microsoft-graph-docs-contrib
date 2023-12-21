---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCrossTenantIdentitySyncPolicyPartner()
displayName := "Fabrikam"
requestBody.SetDisplayName(&displayName) 
userSyncInbound := graphmodels.NewCrossTenantUserSyncInbound()
isSyncAllowed := true
userSyncInbound.SetIsSyncAllowed(&isSyncAllowed) 
requestBody.SetUserSyncInbound(userSyncInbound)

identitySynchronization, err := graphClient.Policies().CrossTenantAccessPolicy().Partners().ByCrossTenantAccessPolicyConfigurationPartnerTenantId("crossTenantAccessPolicyConfigurationPartner-tenantId").IdentitySynchronization().Put(context.Background(), requestBody, nil)


```