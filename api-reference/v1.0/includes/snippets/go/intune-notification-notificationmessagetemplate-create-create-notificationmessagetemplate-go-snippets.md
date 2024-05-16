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

requestBody := graphmodels.NewNotificationMessageTemplate()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
defaultLocale := "Default Locale value"
requestBody.SetDefaultLocale(&defaultLocale) 
brandingOptions := graphmodels.INCLUDECOMPANYLOGO_NOTIFICATIONTEMPLATEBRANDINGOPTIONS 
requestBody.SetBrandingOptions(&brandingOptions) 
roleScopeTagIds := []string {
	"Role Scope Tag Ids value",
}
requestBody.SetRoleScopeTagIds(roleScopeTagIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
notificationMessageTemplates, err := graphClient.DeviceManagement().NotificationMessageTemplates().Post(context.Background(), requestBody, nil)


```