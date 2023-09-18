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



mobileAppCategories, err := graphClient.DeviceAppManagement().MobileAppCategories().ByMobileAppCategoryId("mobileAppCategory-id").Get(context.Background(), nil)


```