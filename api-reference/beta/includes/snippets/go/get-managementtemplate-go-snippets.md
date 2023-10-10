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



managementTemplates, err := graphClient.TenantRelationships().ManagedTenants().ManagementTemplates().ByManagementTemplateId("managementTemplate-id").Get(context.Background(), nil)


```