---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCalendarPermission()
emailAddress := graphmodels.NewEmailAddress()
name := "Samantha Booth"
emailAddress.SetName(&name) 
address := "samanthab@adatum.onmicrosoft.com"
emailAddress.SetAddress(&address) 
requestBody.SetEmailAddress(emailAddress)
isInsideOrganization := true
requestBody.SetIsInsideOrganization(&isInsideOrganization) 
isRemovable := true
requestBody.SetIsRemovable(&isRemovable) 
role := graphmodels.READ_CALENDARROLETYPE 
requestBody.SetRole(&role) 

result, err := graphClient.Users().ByUserId("user-id").Calendar().CalendarPermissions().Post(context.Background(), requestBody, nil)


```