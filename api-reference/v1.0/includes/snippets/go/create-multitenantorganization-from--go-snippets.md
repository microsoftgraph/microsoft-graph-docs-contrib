---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMultiTenantOrganization()
displayName := "Contoso organization"
requestBody.SetDisplayName(&displayName) 
description := "Multitenant organization between Contoso, Fabrikam, and Woodgrove Bank"
requestBody.SetDescription(&description) 

multiTenantOrganization, err := graphClient.TenantRelationships().MultiTenantOrganization().Put(context.Background(), requestBody, nil)


```