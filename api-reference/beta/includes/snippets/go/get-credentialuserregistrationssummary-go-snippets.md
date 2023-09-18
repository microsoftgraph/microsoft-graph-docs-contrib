---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



credentialUserRegistrationsSummaries, err := graphClient.TenantRelationships().ManagedTenants().CredentialUserRegistrationsSummaries().ByCredentialUserRegistrationsSummaryId("credentialUserRegistrationsSummary-id").Get(context.Background(), nil)


```