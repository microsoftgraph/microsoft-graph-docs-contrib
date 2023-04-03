---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Policies/AdminConsentRequestPolicy"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAdminConsentRequestPolicyPutRequestBody()
additionalData := map[string]interface{}{
	isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
	notifyReviewers := true
requestBody.SetNotifyReviewers(&notifyReviewers) 
	remindersEnabled := true
requestBody.SetRemindersEnabled(&remindersEnabled) 
	"requestDurationInDays" : int32(5) , 


 := graphmodels.New()
query := "/users/b6879be8-fb87-4482-a72e-18445d2b5c54"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 
 := graphmodels.New()
query := "/users/b3427cc5-bf69-4dcd-95f7-ed1eb432f5e9"
.SetQuery(&query) 
queryType := "MicrosoftGraph"
.SetQueryType(&queryType) 

	reviewers := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Policies().AdminConsentRequestPolicy().Put(context.Background(), requestBody, nil)


```