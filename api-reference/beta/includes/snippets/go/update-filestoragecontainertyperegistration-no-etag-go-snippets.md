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

requestBody := graphmodels.NewFileStorageContainerTypeRegistration()
settings := graphmodels.NewFileStorageContainerTypeRegistrationSettings()
sharingCapability := graphmodels.EXTERNALUSERANDGUESTSHARING_SHARINGCAPABILITIES 
settings.SetSharingCapability(&sharingCapability) 
requestBody.SetSettings(settings)


fileStorageContainerTypeAppPermissionGrant := graphmodels.NewFileStorageContainerTypeAppPermissionGrant()
appId := "33225700-9a00-4c00-84dd-0c210f203f01"
fileStorageContainerTypeAppPermissionGrant.SetAppId(&appId) 
delegatedPermissions := []graphmodels.FileStorageContainerTypeAppPermissionable {
	fileStorageContainerTypeAppPermission := graphmodels.FULL_FILESTORAGECONTAINERTYPEAPPPERMISSION 
	fileStorageContainerTypeAppPermissionGrant.SetFileStorageContainerTypeAppPermission(&fileStorageContainerTypeAppPermission)
}
fileStorageContainerTypeAppPermissionGrant.SetDelegatedPermissions(delegatedPermissions)
applicationPermissions := []graphmodels.FileStorageContainerTypeAppPermissionable {
	fileStorageContainerTypeAppPermission := graphmodels.NONE_FILESTORAGECONTAINERTYPEAPPPERMISSION 
	fileStorageContainerTypeAppPermissionGrant.SetFileStorageContainerTypeAppPermission(&fileStorageContainerTypeAppPermission)
}
fileStorageContainerTypeAppPermissionGrant.SetApplicationPermissions(applicationPermissions)

applicationPermissionGrants := []graphmodels.FileStorageContainerTypeAppPermissionGrantable {
	fileStorageContainerTypeAppPermissionGrant,
}
requestBody.SetApplicationPermissionGrants(applicationPermissionGrants)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
containerTypeRegistrations, err := graphClient.Storage().FileStorage().ContainerTypeRegistrations().ByFileStorageContainerTypeRegistrationId("fileStorageContainerTypeRegistration-id").Patch(context.Background(), requestBody, nil)


```