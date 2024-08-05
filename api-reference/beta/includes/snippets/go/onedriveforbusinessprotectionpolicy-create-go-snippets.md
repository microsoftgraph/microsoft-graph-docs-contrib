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

requestBody := graphmodels.NewOneDriveForBusinessProtectionPolicy()
displayName := "OneDrive For Business Protection Policy"
requestBody.SetDisplayName(&displayName) 


driveProtectionUnit := graphmodels.NewDriveProtectionUnit()
additionalData := map[string]interface{}{
	"userId" : "cdd3a849-dcaf-4a85-af82-7e39fc14019", 
}
driveProtectionUnit.SetAdditionalData(additionalData)
driveProtectionUnit1 := graphmodels.NewDriveProtectionUnit()
additionalData := map[string]interface{}{
	"userId" : "9bc069da-b746-41a4-89ab-26125c6373c7", 
}
driveProtectionUnit1.SetAdditionalData(additionalData)
driveProtectionUnit2 := graphmodels.NewDriveProtectionUnit()
additionalData := map[string]interface{}{
	"userId" : "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7", 
}
driveProtectionUnit2.SetAdditionalData(additionalData)

driveProtectionUnits := []graphmodels.DriveProtectionUnitable {
	driveProtectionUnit,
	driveProtectionUnit1,
	driveProtectionUnit2,
}
requestBody.SetDriveProtectionUnits(driveProtectionUnits)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
oneDriveForBusinessProtectionPolicies, err := graphClient.Solutions().BackupRestore().OneDriveForBusinessProtectionPolicies().Post(context.Background(), requestBody, nil)


```