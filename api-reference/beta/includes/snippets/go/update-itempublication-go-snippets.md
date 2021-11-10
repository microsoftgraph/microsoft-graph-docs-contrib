---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

userId := "user-id"
itemPublicationId := "itemPublication-id"
graphClient.UsersById(&userId).Profile().PublicationsById(&itemPublicationId).Patch(options);


```