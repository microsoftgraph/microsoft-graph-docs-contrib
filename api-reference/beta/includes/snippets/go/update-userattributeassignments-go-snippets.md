---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentityUserFlowAttributeAssignment()
userInputType := graphmodels.TEXTBOX_IDENTITYUSERFLOWATTRIBUTEINPUTTYPE 
requestBody.SetUserInputType(&userInputType) 

result, err := graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").UserAttributeAssignmentsById("identityUserFlowAttributeAssignment-id").Patch(context.Background(), requestBody, nil)


```