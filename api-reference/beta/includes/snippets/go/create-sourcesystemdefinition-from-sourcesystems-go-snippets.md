---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//industryData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSourceSystemDefinition()
displayName := "Rostering source"
requestBody.SetDisplayName(&displayName) 


userMatchingSetting := graphmodels.NewUserMatchingSetting()
matchTarget := graphmodels.NewUserMatchTargetReferenceValue()
code := "userPrincipalName"
matchTarget.SetCode(&code) 
userMatchingSetting.SetMatchTarget(matchTarget)
priorityOrder := int32(0)
userMatchingSetting.SetPriorityOrder(&priorityOrder) 
sourceIdentifier := graphmodels.NewIdentifierTypeReferenceValue()
code := "username"
sourceIdentifier.SetCode(&code) 
userMatchingSetting.SetSourceIdentifier(sourceIdentifier)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff", 
}
userMatchingSetting.SetAdditionalData(additionalData)
userMatchingSetting1 := graphmodels.NewUserMatchingSetting()
matchTarget := graphmodels.NewUserMatchTargetReferenceValue()
code := "userPrincipalName"
matchTarget.SetCode(&code) 
userMatchingSetting1.SetMatchTarget(matchTarget)
priorityOrder := int32(1)
userMatchingSetting1.SetPriorityOrder(&priorityOrder) 
sourceIdentifier := graphmodels.NewIdentifierTypeReferenceValue()
code := "username"
sourceIdentifier.SetCode(&code) 
userMatchingSetting1.SetSourceIdentifier(sourceIdentifier)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups('students')", 
}
userMatchingSetting1.SetAdditionalData(additionalData)

userMatchingSettings := []graphmodels.UserMatchingSettingable {
	userMatchingSetting,
	userMatchingSetting1,

}
requestBody.SetUserMatchingSettings(userMatchingSettings)

result, err := graphClient.External().IndustryData().SourceSystems().Post(context.Background(), requestBody, nil)


```