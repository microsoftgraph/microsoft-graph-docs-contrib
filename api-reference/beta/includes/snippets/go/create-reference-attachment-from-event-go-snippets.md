---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAttachment()
name := "Personal pictures"
requestBody.SetName(&name) 
sourceUrl := "https://contoso.com/personal/mario_contoso_net/Documents/Pics"
requestBody.SetSourceUrl(&sourceUrl) 
providerType := graphmodels.ONEDRIVECONSUMER_REFERENCEATTACHMENTPROVIDER 
requestBody.SetProviderType(&providerType) 
permission := graphmodels.EDIT_REFERENCEATTACHMENTPERMISSION 
requestBody.SetPermission(&permission) 
isFolder := true
requestBody.SetIsFolder(&isFolder) 

result, err := graphClient.Me().Events().ByEventId("event-id").Attachments().Post(context.Background(), requestBody, nil)


```