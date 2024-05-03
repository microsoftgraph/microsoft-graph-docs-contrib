---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMultiTenantOrganizationIdentitySyncPolicyTemplate()
templateApplicationLevel := graphmodels.NEWPARTNERS,EXISTINGPARTNERS_TEMPLATEAPPLICATIONLEVEL 
requestBody.SetTemplateApplicationLevel(&templateApplicationLevel) 
userSyncInbound := graphmodels.NewCrossTenantUserSyncInbound()
isSyncAllowed := true
userSyncInbound.SetIsSyncAllowed(&isSyncAllowed) 
requestBody.SetUserSyncInbound(userSyncInbound)

multiTenantOrganizationIdentitySynchronization, err := graphClient.Policies().CrossTenantAccessPolicy().Templates().MultiTenantOrganizationIdentitySynchronization().Patch(context.Background(), requestBody, nil)


```