---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAdminReportSettings()
displayConcealedNames := true
requestBody.SetDisplayConcealedNames(&displayConcealedNames) 

reportSettings, err := graphClient.Admin().ReportSettings().Patch(context.Background(), requestBody, nil)


```