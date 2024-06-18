---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewSubscription()
changeType := "created,updated"
requestBody.SetChangeType(&changeType) 
notificationUrl := "https://webhook.azurewebsites.net/api/resourceNotifications"
requestBody.SetNotificationUrl(&notificationUrl) 
resource := "/teams/{id}/channels/{id}/messages"
requestBody.SetResource(&resource) 
includeResourceData := true
requestBody.SetIncludeResourceData(&includeResourceData) 
encryptionCertificate := "{base64encodedCertificate}"
requestBody.SetEncryptionCertificate(&encryptionCertificate) 
encryptionCertificateId := "{customId}"
requestBody.SetEncryptionCertificateId(&encryptionCertificateId) 
expirationDateTime , err := time.Parse(time.RFC3339, "2019-09-19T11:00:00.0000000Z")
requestBody.SetExpirationDateTime(&expirationDateTime) 
clientState := "{secretClientState}"
requestBody.SetClientState(&clientState) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
subscriptions, err := graphClient.Subscriptions().Post(context.Background(), requestBody, nil)


```