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

requestBody := graphmodels.NewFileStorageContainerTypeAppPermissionGrant()
applicationPermissions := []graphmodels.FileStorageContainerTypeAppPermissionable {
	fileStorageContainerTypeAppPermission := graphmodels.FULL_FILESTORAGECONTAINERTYPEAPPPERMISSION 
	requestBody.SetFileStorageContainerTypeAppPermission(&fileStorageContainerTypeAppPermission)
}
requestBody.SetApplicationPermissions(applicationPermissions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applicationPermissionGrants, err := graphClient.Storage().FileStorage().ContainerTypeRegistrations().ByFileStorageContainerTypeRegistrationId("fileStorageContainerTypeRegistration-id").ApplicationPermissionGrants().ByFileStorageContainerTypeAppPermissionGrantAppId("fileStorageContainerTypeAppPermissionGrant-appId").Patch(context.Background(), requestBody, nil)


```