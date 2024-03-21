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



manifests, err := graphClient.Reports().Partners().Billing().Manifests().ByManifestId("manifest-id").Get(context.Background(), nil)


```