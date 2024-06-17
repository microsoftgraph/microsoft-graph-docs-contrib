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
id := "71ba13dc-5947-4e59-bcc5-0ad5c339a853"
requestBody.SetId(&id) 
deletedDateTime := null
requestBody.SetDeletedDateTime(&deletedDateTime) 


preApprovalDetail := graphmodels.NewPreApprovalDetail()
scopeType := graphmodels.CHAT_RESOURCESCOPETYPE 
preApprovalDetail.SetScopeType(&scopeType) 
sensitivityLabels := graphmodels.NewEnumeratedScopeSensitivityLabels()
labelKind := graphmodels.ENUMERATED_LABELKIND 
sensitivityLabels.SetLabelKind(&labelKind) 
sensitivityLabels := []string {
	"d9c43deb-f3e1-4422-9fd6-ccf22a3206b8",
}
sensitivityLabels.SetSensitivityLabels(sensitivityLabels)
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
sensitivityLabels := graphmodels.NewAllScopeSensitivityLabels()
labelKind := graphmodels.ALL_LABELKIND 
sensitivityLabels.SetLabelKind(&labelKind) 
preApprovalDetail1.SetSensitivityLabels(sensitivityLabels)
permissions := graphmodels.NewEnumeratedPreApprovedPermissions()
permissionKind := graphmodels.ENUMERATED_PERMISSIONKIND 
permissions.SetPermissionKind(&permissionKind) 
resourceApplicationId := "00000003-0000-0000-c000-000000000000"
permissions.SetResourceApplicationId(&resourceApplicationId) 
permissionIds := []string {
	"134483aa-3dda-4d65-ac91-b8dda1417875",
	"9d33613d-f855-483b-bca7-ea63ac9f5485",
}
permissions.SetPermissionIds(permissionIds)
permissionType := graphmodels.APPLICATION_PERMISSIONTYPE 
permissions.SetPermissionType(&permissionType) 
preApprovalDetail1.SetPermissions(permissions)

conditions := []graphmodels.PreApprovalDetailable {
	preApprovalDetail,
	preApprovalDetail1,
}
requestBody.SetConditions(conditions)
additionalData := map[string]interface{}{
	"odataContext" : "https://graph.microsoft.com/beta/$metadata#policies/permissionGrantPreApprovalPolicies/$entity", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
permissionGrantPreApprovalPolicies, err := graphClient.Policies().PermissionGrantPreApprovalPolicies().ByPermissionGrantPreApprovalPolicyId("permissionGrantPreApprovalPolicy-id").Patch(context.Background(), requestBody, nil)


```