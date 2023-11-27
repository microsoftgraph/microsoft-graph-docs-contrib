---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewItemRetentionLabel()
name := "Retention label for Contracts"
requestBody.SetName(&name) 

retentionLabel, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").RetentionLabel().Patch(context.Background(), requestBody, nil)


```