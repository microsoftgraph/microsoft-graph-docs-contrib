---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewQrCode()
expireDateTime , err := time.Parse(time.RFC3339, "2025-12-19T12:00:00Z")
requestBody.SetExpireDateTime(&expireDateTime) 
startDateTime , err := time.Parse(time.RFC3339, "2025-01-01T12:00:00Z")
requestBody.SetStartDateTime(&startDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
standardQRCode, err := graphClient.Users().ByUserId("user-id").Authentication().QrCodePinMethod().StandardQRCode().Patch(context.Background(), requestBody, nil)


```