---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewOneDriveForBusinessRestoreSession()


driveRestoreArtifact := graphmodels.NewDriveRestoreArtifact()
restorePoint := graphmodels.NewRestorePoint()
additionalData := map[string]interface{}{
	"@odata.id" : "1f1fccc3-a642-4f61-bf49-f37b9a888279", 
}
restorePoint.SetAdditionalData(additionalData)
driveRestoreArtifact.SetRestorePoint(restorePoint)
destinationType := graphmodels.NEW_DESTINATIONTYPE 
driveRestoreArtifact.SetDestinationType(&destinationType) 
driveRestoreArtifact1 := graphmodels.NewDriveRestoreArtifact()
restorePoint := graphmodels.NewRestorePoint()
additionalData := map[string]interface{}{
	"@odata.id" : "1f1fccc3-a642-4f61-bf49-f37b9a888280", 
}
restorePoint.SetAdditionalData(additionalData)
driveRestoreArtifact1.SetRestorePoint(restorePoint)
destinationType := graphmodels.NEW_DESTINATIONTYPE 
driveRestoreArtifact1.SetDestinationType(&destinationType) 

driveRestoreArtifacts := []graphmodels.DriveRestoreArtifactable {
	driveRestoreArtifact,
	driveRestoreArtifact1,
}
requestBody.SetDriveRestoreArtifacts(driveRestoreArtifacts)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
oneDriveForBusinessRestoreSessions, err := graphClient.Solutions().BackupRestore().OneDriveForBusinessRestoreSessions().Post(context.Background(), requestBody, nil)


```