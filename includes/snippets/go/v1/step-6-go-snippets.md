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
changeType := "created,updated,deleted"
requestBody.SetChangeType(&changeType) 
notificationUrl := "https://webhook.azurewebsites.net/api/send/myNotifyClient"
requestBody.SetNotificationUrl(&notificationUrl) 
resource := "/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd/chats/getAllMessages?model=B"
requestBody.SetResource(&resource) 
expirationDateTime , err := time.Parse(time.RFC3339, "2023-01-10T18:56:49.112603+00:00")
requestBody.SetExpirationDateTime(&expirationDateTime) 
clientState := "ClientSecret"
requestBody.SetClientState(&clientState) 
includeResourceData := true
requestBody.SetIncludeResourceData(&includeResourceData) 
encryptionCertificate := "MMMM/sMMMsssMsMMMsMMsMMMs4sMMsM4ssMsMsMMMss4ssMMMssss...s4sMMMMsM444ssM4MMsssMMMMsM4MMM4sMsM4MMsM44MMM4ssss4Ms4sMM4MMMMM4MMs+ss4MsMssMss4s=="
requestBody.SetEncryptionCertificate(&encryptionCertificate) 
encryptionCertificateId := "44M4444M4444M4M44MM4444MM4444MMMM44MM4M4"
requestBody.SetEncryptionCertificateId(&encryptionCertificateId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
subscriptions, err := graphClient.Subscriptions().Post(context.Background(), requestBody, nil)


```