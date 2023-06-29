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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMobileAppCategory()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.DeviceAppManagement().MobileAppCategories().ByMobileAppCategorieId("mobileAppCategory-id").Patch(context.Background(), requestBody, nil)


```