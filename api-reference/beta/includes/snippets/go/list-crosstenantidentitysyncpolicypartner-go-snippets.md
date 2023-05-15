---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/policies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.PoliciesCrossTenantAccessPolicyPartnersRequestBuilderGetQueryParameters{
	Select: [] string {"tenantId"},
	Expand: [] string {"identitySynchronization"},
}
configuration := &graphconfig.PoliciesCrossTenantAccessPolicyPartnersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().CrossTenantAccessPolicy().Partners().Get(context.Background(), configuration)


```