---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewScopedRoleMembership()
roleId := "roleId-value"
requestBody.SetRoleId(&roleId) 
roleMemberInfo := graphmodels.NewIdentity()
id := "id-value"
roleMemberInfo.SetId(&id) 
requestBody.SetRoleMemberInfo(roleMemberInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
scopedRoleMembers, err := graphClient.Directory().AdministrativeUnits().ByAdministrativeUnitId("administrativeUnit-id").ScopedRoleMembers().Post(context.Background(), requestBody, nil)


```