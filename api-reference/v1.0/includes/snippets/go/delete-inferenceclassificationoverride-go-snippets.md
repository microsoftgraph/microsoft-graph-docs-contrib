---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Me().InferenceClassification().Overrides().ByInferenceClassificationOverrideId("inferenceClassificationOverride-id").Delete(context.Background(), nil)


```