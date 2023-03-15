---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.SitesById("site-id").ListsById("list-id").ItemsById("listItem-id").DocumentSetVersionsById("documentSetVersion-id").Delete(context.Background(), nil)


```