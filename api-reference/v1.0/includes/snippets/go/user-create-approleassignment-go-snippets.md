---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAppRoleAssignment()
principalId := uuid.MustParse("cde330e5-2150-4c11-9c5b-14bfdc948c79")
requestBody.SetPrincipalId(&principalId) 
resourceId := uuid.MustParse("8e881353-1735-45af-af21-ee1344582a4d")
requestBody.SetResourceId(&resourceId) 
appRoleId := uuid.MustParse("00000000-0000-0000-0000-000000000000")
requestBody.SetAppRoleId(&appRoleId) 

result, err := graphClient.UsersById("user-id").AppRoleAssignments().Post(context.Background(), requestBody, nil)


```