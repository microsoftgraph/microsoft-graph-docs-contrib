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

requestBody := graphmodels.NewAccessPackageAssignmentPolicy()
displayName := "Sales department users"
requestBody.SetDisplayName(&displayName) 
description := "All users from sales department"
requestBody.SetDescription(&description) 
allowedTargetScope := graphmodels.SPECIFICDIRECTORYUSERS_ALLOWEDTARGETSCOPE 
requestBody.SetAllowedTargetScope(&allowedTargetScope) 


subjectSet := graphmodels.NewAttributeRuleMembers()
description := "Membership rule for all users from sales department"
subjectSet.SetDescription(&description) 
membershipRule := "(user.department -eq \"Sales\")"
subjectSet.SetMembershipRule(&membershipRule) 

specificAllowedTargets := []graphmodels.SubjectSetable {
	subjectSet,
}
requestBody.SetSpecificAllowedTargets(specificAllowedTargets)
automaticRequestSettings := graphmodels.NewAccessPackageAutomaticRequestSettings()
requestAccessForAllowedTargets := true
automaticRequestSettings.SetRequestAccessForAllowedTargets(&requestAccessForAllowedTargets) 
removeAccessWhenTargetLeavesAllowedTargets := true
automaticRequestSettings.SetRemoveAccessWhenTargetLeavesAllowedTargets(&removeAccessWhenTargetLeavesAllowedTargets) 
gracePeriodBeforeAccessRemoval , err := abstractions.ParseISODuration("P7D")
automaticRequestSettings.SetGracePeriodBeforeAccessRemoval(&gracePeriodBeforeAccessRemoval) 
requestBody.SetAutomaticRequestSettings(automaticRequestSettings)
accessPackage := graphmodels.NewAccessPackage()
id := "8a36831e-1527-4b2b-aff2-81259a8d8e76"
accessPackage.SetId(&id) 
requestBody.SetAccessPackage(accessPackage)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentPolicies, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().Post(context.Background(), requestBody, nil)


```