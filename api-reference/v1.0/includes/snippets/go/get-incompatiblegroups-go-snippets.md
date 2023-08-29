---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



incompatibleGroups, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").IncompatibleGroups().Get(context.Background(), nil)


```