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

notificationMessageTemplates, err := graphClient.DeviceManagement().NotificationMessageTemplates().Post(context.Background(), requestBody, nil)


```