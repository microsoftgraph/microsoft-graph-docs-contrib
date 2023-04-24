---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Policies().FeatureRolloutPolicies().ByFeatureRolloutPolicieId("featureRolloutPolicy-id").AppliesTo().ByAppliesTo().Id("directoryObject-id").Ref().Delete(context.Background(), nil)


```