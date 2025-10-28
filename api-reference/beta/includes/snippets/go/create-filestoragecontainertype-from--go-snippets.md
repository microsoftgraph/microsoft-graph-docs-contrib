---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewFileStorageContainerType()
name := "Test Trial Container"
requestBody.SetName(&name) 
owningAppId := uuid.MustParse("11335700-9a00-4c00-84dd-0c210f203f00")
requestBody.SetOwningAppId(&owningAppId) 
billingClassification := graphmodels.TRIAL_FILESTORAGECONTAINERBILLINGCLASSIFICATION 
requestBody.SetBillingClassification(&billingClassification) 
settings := graphmodels.NewFileStorageContainerTypeSettings()
isItemVersioningEnabled := true
settings.SetIsItemVersioningEnabled(&isItemVersioningEnabled) 
isSharingRestricted := false
settings.SetIsSharingRestricted(&isSharingRestricted) 
consumingTenantOverridables := graphmodels.ISSEARCHENABLED,ITEMMAJORVERSIONLIMIT_FILESTORAGECONTAINERTYPESETTINGSOVERRIDE 
settings.SetConsumingTenantOverridables(&consumingTenantOverridables) 
agent := graphmodels.NewFileStorageContainerTypeAgentSettings()
chatEmbedAllowedHosts := []string {
	"https://localhost:3000",
}
agent.SetChatEmbedAllowedHosts(chatEmbedAllowedHosts)
settings.SetAgent(agent)
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
containerTypes, err := graphClient.Storage().FileStorage().ContainerTypes().Post(context.Background(), requestBody, nil)


```