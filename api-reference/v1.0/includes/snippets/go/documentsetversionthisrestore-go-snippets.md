---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.SitesById("site-id").ListsById("list-id").ItemsById("listItem-id").DocumentSetVersionsById("documentSetVersion-id").Restore().Post(context.Background(), nil)


```