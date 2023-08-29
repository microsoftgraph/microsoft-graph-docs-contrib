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



incompatibleAccessPackages, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").IncompatibleAccessPackages().Get(context.Background(), nil)


```