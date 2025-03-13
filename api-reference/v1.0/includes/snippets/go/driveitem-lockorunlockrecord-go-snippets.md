---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewItemRetentionLabel()
retentionSettings := graphmodels.NewRetentionLabelSettings()
isRecordLocked := true
retentionSettings.SetIsRecordLocked(&isRecordLocked) 
requestBody.SetRetentionSettings(retentionSettings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
retentionLabel, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").RetentionLabel().Patch(context.Background(), requestBody, nil)


```