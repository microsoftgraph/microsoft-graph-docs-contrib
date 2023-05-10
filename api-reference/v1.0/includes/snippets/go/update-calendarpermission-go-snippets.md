---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCalendarPermission()
role := graphmodels.WRITE_CALENDARROLETYPE 
requestBody.SetRole(&role) 

result, err := graphClient.Users().ByUserId("user-id").Calendar().CalendarPermissions().ByCalendarPermissionId("calendarPermission-id").Patch(context.Background(), requestBody, nil)


```