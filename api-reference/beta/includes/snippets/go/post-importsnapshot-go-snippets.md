---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphdevicemanagement.NewImportSnapshotPostRequestBody()


cloudPcSnapshotImportActionDetail := graphmodels.NewCloudPcSnapshotImportActionDetail()
sourceType := graphmodels.AZURESTORAGEACCOUNT_CLOUDPCSNAPSHOTIMPORTSOURCETYPE 
cloudPcSnapshotImportActionDetail.SetSourceType(&sourceType) 
fileType := graphmodels.DATAFILE_CLOUDPCSNAPSHOTIMPORTFILETYPE 
cloudPcSnapshotImportActionDetail.SetFileType(&fileType) 
storageBlobInfo := graphmodels.NewCloudPcStorageBlobDetail()
storageAccountId := "/subscriptions/subscription-id/resourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name"
storageBlobInfo.SetStorageAccountId(&storageAccountId) 
containerName := "myContainer"
storageBlobInfo.SetContainerName(&containerName) 
additionalData := map[string]interface{}{
	"blobName" : "snapshotForCloudPc.vhd", 
}
storageBlobInfo.SetAdditionalData(additionalData)
cloudPcSnapshotImportActionDetail.SetStorageBlobInfo(storageBlobInfo)
cloudPcSnapshotImportActionDetail1 := graphmodels.NewCloudPcSnapshotImportActionDetail()
sourceType := graphmodels.AZURESTORAGEACCOUNT_CLOUDPCSNAPSHOTIMPORTSOURCETYPE 
cloudPcSnapshotImportActionDetail1.SetSourceType(&sourceType) 
fileType := graphmodels.VIRTUALMACHINEGUESTSTATE_CLOUDPCSNAPSHOTIMPORTFILETYPE 
cloudPcSnapshotImportActionDetail1.SetFileType(&fileType) 
storageBlobInfo := graphmodels.NewCloudPcStorageBlobDetail()
storageAccountId := "/subscriptions/subscription-idresourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name"
storageBlobInfo.SetStorageAccountId(&storageAccountId) 
containerName := "myContainer"
storageBlobInfo.SetContainerName(&containerName) 
additionalData := map[string]interface{}{
	"blobName" : "virtualMachineGuestState.vhd", 
}
storageBlobInfo.SetAdditionalData(additionalData)
cloudPcSnapshotImportActionDetail1.SetStorageBlobInfo(storageBlobInfo)

sourceFiles := []graphmodels.CloudPcSnapshotImportActionDetailable {
	cloudPcSnapshotImportActionDetail,
	cloudPcSnapshotImportActionDetail1,
}
requestBody.SetSourceFiles(sourceFiles)
assignedUserId := "93aff428-61f2-467f-a879-1102af6fd4a8"
requestBody.SetAssignedUserId(&assignedUserId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
importSnapshot, err := graphClient.DeviceManagement().VirtualEndpoint().Snapshots().ImportSnapshot().Post(context.Background(), requestBody, nil)


```