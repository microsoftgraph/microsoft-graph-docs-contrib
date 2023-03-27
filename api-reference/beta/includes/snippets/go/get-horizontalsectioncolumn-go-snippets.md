---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.SitesById("site-id").PagesById("sitePage-id").CanvasLayout().HorizontalSectionsById("horizontalSection-id").ColumnsById("horizontalSectionColumn-id").Get(context.Background(), nil)


```