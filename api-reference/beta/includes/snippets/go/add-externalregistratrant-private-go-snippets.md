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


requestBody := graphmodels.NewMeetingRegistrantBase()
id := "30494ab7-7338-4592-bfec-a4333be2a0a6"
requestBody.SetId(&id) 
tenantId := "909c6581-5130-43e9-88f3-fcb3582cde37"
requestBody.SetTenantId(&tenantId) 
userId := "cc515404-b55c-466e-b896-992c918ecc01"
requestBody.SetUserId(&userId) 

result, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Registration().Registrants().Post(context.Background(), requestBody, nil)


```