---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMultiTenantOrganizationIdentitySyncPolicyTemplate()
templateApplicationLevel := graphmodels.NEWPARTNERS,EXISTINGPARTNERS_TEMPLATEAPPLICATIONLEVEL 
requestBody.SetTemplateApplicationLevel(&templateApplicationLevel) 
userSyncInbound := graphmodels.NewCrossTenantUserSyncInbound()
isSyncAllowed := true
userSyncInbound.SetIsSyncAllowed(&isSyncAllowed) 
requestBody.SetUserSyncInbound(userSyncInbound)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
multiTenantOrganizationIdentitySynchronization, err := graphClient.Policies().CrossTenantAccessPolicy().Templates().MultiTenantOrganizationIdentitySynchronization().Patch(context.Background(), requestBody, nil)


```