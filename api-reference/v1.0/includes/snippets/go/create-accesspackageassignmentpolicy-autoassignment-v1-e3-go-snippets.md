---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentPolicy()
displayName := "Sales department users"
requestBody.SetDisplayName(&displayName) 
description := "All users from sales department"
requestBody.SetDescription(&description) 
allowedTargetScope := graphmodels.SPECIFICDIRECTORYUSERS_ALLOWEDTARGETSCOPE 
requestBody.SetAllowedTargetScope(&allowedTargetScope) 


subjectSet := graphmodels.NewSubjectSet()
additionalData := map[string]interface{}{
	"description" : "Membership rule for all users from sales department", 
	"membershipRule" : "(user.department -eq \"Sales\")", 
}
subjectSet.SetAdditionalData(additionalData)

specificAllowedTargets := []graphmodels.SubjectSetable {
	subjectSet,

}
requestBody.SetSpecificAllowedTargets(specificAllowedTargets)
automaticRequestSettings := graphmodels.NewAccessPackageAutomaticRequestSettings()
requestAccessForAllowedTargets := true
automaticRequestSettings.SetRequestAccessForAllowedTargets(&requestAccessForAllowedTargets) 
requestBody.SetAutomaticRequestSettings(automaticRequestSettings)
accessPackage := graphmodels.NewAccessPackage()
id := "8a36831e-1527-4b2b-aff2-81259a8d8e76"
accessPackage.SetId(&id) 
requestBody.SetAccessPackage(accessPackage)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().Post(context.Background(), requestBody, nil)


```