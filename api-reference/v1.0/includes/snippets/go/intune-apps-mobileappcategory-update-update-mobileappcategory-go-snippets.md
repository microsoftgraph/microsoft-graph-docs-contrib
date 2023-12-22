---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMobileAppCategory()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 

mobileAppCategories, err := graphClient.DeviceAppManagement().MobileAppCategories().ByMobileAppCategoryId("mobileAppCategory-id").Patch(context.Background(), requestBody, nil)


```