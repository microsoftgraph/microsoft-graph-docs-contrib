---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentityprotection "github.com/microsoftgraph/msgraph-sdk-go/identityprotection"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "userDisplayName eq 'MyTestUser1'"

requestParameters := &graphidentityprotection.IdentityProtectionRiskyUsersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentityprotection.IdentityProtectionRiskyUsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().RiskyUsers().Get(context.Background(), configuration)


```