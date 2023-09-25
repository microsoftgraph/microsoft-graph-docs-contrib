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



extensionProperties, err := graphClient.Applications().ByApplicationId("application-id").ExtensionProperties().ByExtensionPropertyId("extensionProperty-id").Get(context.Background(), nil)


```