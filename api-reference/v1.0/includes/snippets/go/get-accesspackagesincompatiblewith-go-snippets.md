---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").AccessPackagesIncompatibleWith().Get(context.Background(), nil)


```