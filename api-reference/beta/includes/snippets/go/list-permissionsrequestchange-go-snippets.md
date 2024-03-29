---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "modificationDateTime gt {t}"

requestParameters := &graphidentitygovernance.IdentityGovernancePermissionsManagementPermissionsRequestChangesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernancePermissionsManagementPermissionsRequestChangesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

permissionsRequestChanges, err := graphClient.IdentityGovernance().PermissionsManagement().PermissionsRequestChanges().Get(context.Background(), configuration)


```