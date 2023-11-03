---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewApplePushNotificationCertificate()
appleIdentifier := "Apple Identifier value"
requestBody.SetAppleIdentifier(&appleIdentifier) 
topicIdentifier := "Topic Identifier value"
requestBody.SetTopicIdentifier(&topicIdentifier) 
expirationDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:57.2481234-08:00")
requestBody.SetExpirationDateTime(&expirationDateTime) 
certificateUploadStatus := "Certificate Upload Status value"
requestBody.SetCertificateUploadStatus(&certificateUploadStatus) 
certificateUploadFailureReason := "Certificate Upload Failure Reason value"
requestBody.SetCertificateUploadFailureReason(&certificateUploadFailureReason) 
certificateSerialNumber := "Certificate Serial Number value"
requestBody.SetCertificateSerialNumber(&certificateSerialNumber) 
certificate := "Certificate value"
requestBody.SetCertificate(&certificate) 

applePushNotificationCertificate, err := graphClient.DeviceManagement().ApplePushNotificationCertificate().Patch(context.Background(), requestBody, nil)


```