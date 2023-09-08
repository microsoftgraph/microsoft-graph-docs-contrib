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



resourceNamespaces, err := graphClient.RoleManagement().Directory().ResourceNamespaces().ByUnifiedRbacResourceNamespaceId("unifiedRbacResourceNamespace-id").Get(context.Background(), nil)


```