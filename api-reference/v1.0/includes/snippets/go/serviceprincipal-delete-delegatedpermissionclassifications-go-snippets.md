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



graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").DelegatedPermissionClassifications().ByDelegatedPermissionClassificationId("delegatedPermissionClassification-id").Delete(context.Background(), nil)


```