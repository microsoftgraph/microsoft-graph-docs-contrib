---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewRetentionLabel()
retentionDuration := graphmodelssecurity.NewRetentionDuration()
requestBody.SetRetentionDuration(retentionDuration)
descriptionForAdmins := "String"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
descriptionForUsers := "String"
requestBody.SetDescriptionForUsers(&descriptionForUsers) 
labelToBeApplied := "String"
requestBody.SetLabelToBeApplied(&labelToBeApplied) 
defaultRecordBehavior := graphmodels.STRING_DEFAULTRECORDBEHAVIOR 
requestBody.SetDefaultRecordBehavior(&defaultRecordBehavior) 

result, err := graphClient.Security().Labels().RetentionLabels().ByRetentionLabelId("retentionLabel-id").Patch(context.Background(), requestBody, nil)


```