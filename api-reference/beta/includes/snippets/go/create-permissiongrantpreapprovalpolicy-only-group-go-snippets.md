---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewPermissionGrantPreApprovalPolicy()


preApprovalDetail := graphmodels.NewPreApprovalDetail()
scopeType := graphmodels.GROUP_RESOURCESCOPETYPE 
preApprovalDetail.SetScopeType(&scopeType) 
sensitivityLabels := graphmodels.NewAllScopeSensitivityLabels()
labelKind := graphmodels.ALL_LABELKIND 
sensitivityLabels.SetLabelKind(&labelKind) 
preApprovalDetail.SetSensitivityLabels(sensitivityLabels)
permissions := graphmodels.NewPreApprovedPermissions()
permissionKind := graphmodels.ALLPERMISSIONSONRESOURCEAPP_PERMISSIONKIND 
permissions.SetPermissionKind(&permissionKind) 
permissionType := graphmodels.APPLICATION_PERMISSIONTYPE 
permissions.SetPermissionType(&permissionType) 
additionalData := map[string]interface{}{
	"resourceApplicationId" : "00000003-0000-0000-c000-000000000000", 
}
permissions.SetAdditionalData(additionalData)
preApprovalDetail.SetPermissions(permissions)

conditions := []graphmodels.PreApprovalDetailable {
	preApprovalDetail,
}
requestBody.SetConditions(conditions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
permissionGrantPreApprovalPolicies, err := graphClient.Policies().PermissionGrantPreApprovalPolicies().Post(context.Background(), requestBody, nil)


```