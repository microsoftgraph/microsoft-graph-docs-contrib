---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsindustrydata.NewSourceSystemDefinition()
displayName := "Rostering source"
requestBody.SetDisplayName(&displayName) 


userMatchingSetting := graphmodelsindustrydata.NewUserMatchingSetting()
matchTarget := graphmodelsindustrydata.NewUserMatchTargetReferenceValue()
code := "userPrincipalName"
matchTarget.SetCode(&code) 
userMatchingSetting.SetMatchTarget(matchTarget)
priorityOrder := int32(0)
userMatchingSetting.SetPriorityOrder(&priorityOrder) 
sourceIdentifier := graphmodelsindustrydata.NewIdentifierTypeReferenceValue()
code := "username"
sourceIdentifier.SetCode(&code) 
userMatchingSetting.SetSourceIdentifier(sourceIdentifier)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff", 
}
userMatchingSetting.SetAdditionalData(additionalData)
userMatchingSetting1 := graphmodelsindustrydata.NewUserMatchingSetting()
matchTarget := graphmodelsindustrydata.NewUserMatchTargetReferenceValue()
code := "userPrincipalName"
matchTarget.SetCode(&code) 
userMatchingSetting1.SetMatchTarget(matchTarget)
priorityOrder := int32(1)
userMatchingSetting1.SetPriorityOrder(&priorityOrder) 
sourceIdentifier := graphmodelsindustrydata.NewIdentifierTypeReferenceValue()
code := "username"
sourceIdentifier.SetCode(&code) 
userMatchingSetting1.SetSourceIdentifier(sourceIdentifier)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups('students')", 
}
userMatchingSetting1.SetAdditionalData(additionalData)

userMatchingSettings := []graphmodelsindustrydata.UserMatchingSettingable {
	userMatchingSetting,
	userMatchingSetting1,
}
requestBody.SetUserMatchingSettings(userMatchingSettings)

sourceSystems, err := graphClient.External().IndustryData().SourceSystems().Post(context.Background(), requestBody, nil)


```