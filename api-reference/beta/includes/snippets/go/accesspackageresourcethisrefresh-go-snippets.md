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



graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageResources().ByAccessPackageResourceId("accessPackageResource-id").Refresh().Post(context.Background(), nil)


```