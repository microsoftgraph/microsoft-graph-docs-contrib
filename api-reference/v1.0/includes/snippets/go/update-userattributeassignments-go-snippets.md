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


requestBody := graphmodels.NewIdentityUserFlowAttributeAssignment()
userInputType := graphmodels.TEXTBOX_IDENTITYUSERFLOWATTRIBUTEINPUTTYPE 
requestBody.SetUserInputType(&userInputType) 

userAttributeAssignments, err := graphClient.Identity().B2xUserFlows().ByB2xIdentityUserFlowId("b2xIdentityUserFlow-id").UserAttributeAssignments().ByIdentityUserFlowAttributeAssignmentId("identityUserFlowAttributeAssignment-id").Patch(context.Background(), requestBody, nil)


```