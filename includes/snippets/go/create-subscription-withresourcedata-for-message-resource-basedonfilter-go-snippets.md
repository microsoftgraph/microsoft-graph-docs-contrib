---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSubscription()
changeType := "created"
requestBody.SetChangeType(&changeType) 
notificationUrl := "https://webhook.azurewebsites.net/api/send/myNotifyClient"
requestBody.SetNotificationUrl(&notificationUrl) 
resource := "me/mailfolders('Drafts')/messages?$select=Subject,bodyPreview&$filter=hasAttachments eq true AND importance eq 'High'"
requestBody.SetResource(&resource) 
expirationDateTime , err := time.Parse(time.RFC3339, "2022-01-01T21:42:18.2257768+00:00")
requestBody.SetExpirationDateTime(&expirationDateTime) 
clientState := "secretClientValue"
requestBody.SetClientState(&clientState) 
includeResourceData := true
requestBody.SetIncludeResourceData(&includeResourceData) 
encryptionCertificate := "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA=="
requestBody.SetEncryptionCertificate(&encryptionCertificate) 
encryptionCertificateId := "testCertificateId"
requestBody.SetEncryptionCertificateId(&encryptionCertificateId) 

result, err := graphClient.Subscriptions().Post(context.Background(), requestBody, nil)


```