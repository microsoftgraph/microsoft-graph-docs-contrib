---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Policies().FeatureRolloutPolicies().ByFeatureRolloutPolicieId("featureRolloutPolicy-id").AppliesTo().ByAppliesTo().Id("directoryObject-id").Ref().Delete(context.Background(), nil)


```