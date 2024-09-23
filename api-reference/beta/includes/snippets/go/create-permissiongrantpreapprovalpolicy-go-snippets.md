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
scopeType := graphmodels.CHAT_RESOURCESCOPETYPE 
preApprovalDetail.SetScopeType(&scopeType) 
sensitivityLabels := graphmodels.NewAllScopeSensitivityLabels()
labelKind := graphmodels.ALL_LABELKIND 
sensitivityLabels.SetLabelKind(&labelKind) 
preApprovalDetail.SetSensitivityLabels(sensitivityLabels)
permissions := graphmodels.NewAllPreApprovedPermissions()
permissionKind := graphmodels.ALL_PERMISSIONKIND 
permissions.SetPermissionKind(&permissionKind) 
permissionType := graphmodels.APPLICATION_PERMISSIONTYPE 
permissions.SetPermissionType(&permissionType) 
preApprovalDetail.SetPermissions(permissions)
preApprovalDetail1 := graphmodels.NewPreApprovalDetail()
scopeType := graphmodels.GROUP_RESOURCESCOPETYPE 
preApprovalDetail1.SetScopeType(&scopeType) 
permissions := graphmodels.NewEnumeratedPreApprovedPermissions()
permissionKind := graphmodels.ENUMERATED_PERMISSIONKIND 
permissions.SetPermissionKind(&permissionKind) 
permissionType := graphmodels.APPLICATION_PERMISSIONTYPE 
permissions.SetPermissionType(&permissionType) 
resourceApplicationId := "00000003-0000-0000-c000-000000000000"
permissions.SetResourceApplicationId(&resourceApplicationId) 
permissionIds := []string {
	"134483aa-3dda-4d65-ac91-b8dda1417875",
	"9d33613d-f855-483b-bca7-ea63ac9f5485",
}
permissions.SetPermissionIds(permissionIds)
preApprovalDetail1.SetPermissions(permissions)
additionalData := map[string]interface{}{
scopeSensitivityLabels := graphmodels.NewEnumeratedScopeSensitivityLabels()
	labelKind := graphmodels.ENUMERATED_LABELKIND 
	scopeSensitivityLabels.SetLabelKind(&labelKind) 
	sensitivityLabels := []string {
		"d9c43deb-f3e1-4422-9fd6-ccf22a3206b8",
		"c99dade2-aa54-4890-ac1c-a146fa26bd1e",
	}
	scopeSensitivityLabels.SetSensitivityLabels(sensitivityLabels)
	preApprovalDetail1.SetScopeSensitivityLabels(scopeSensitivityLabels)
}
preApprovalDetail1.SetAdditionalData(additionalData)

conditions := []graphmodels.PreApprovalDetailable {
	preApprovalDetail,
	preApprovalDetail1,
}
requestBody.SetConditions(conditions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
permissionGrantPreApprovalPolicies, err := graphClient.Policies().PermissionGrantPreApprovalPolicies().Post(context.Background(), requestBody, nil)


```