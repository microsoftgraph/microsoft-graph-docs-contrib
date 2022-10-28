---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPersonAnnualEvent()
allowedAudiences := graphmodels.CONTACTS_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 

result, err := graphClient.Me().Profile().AnniversariesById("personAnnualEvent-id").Patch(context.Background(), requestBody, nil)


```