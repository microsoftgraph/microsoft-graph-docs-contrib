---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroupLifecyclePolicy()
groupLifetimeInDays := int32(180)
requestBody.SetGroupLifetimeInDays(&groupLifetimeInDays) 
managedGroupTypes := "Selected"
requestBody.SetManagedGroupTypes(&managedGroupTypes) 
alternateNotificationEmails := "admin@contoso.com"
requestBody.SetAlternateNotificationEmails(&alternateNotificationEmails) 

graphClient.GroupLifecyclePoliciesById("groupLifecyclePolicy-id").Patch(context.Background(), requestBody, nil)


```