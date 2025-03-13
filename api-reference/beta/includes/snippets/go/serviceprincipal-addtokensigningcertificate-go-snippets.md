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
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-beta-sdk-go/serviceprincipals"
	  //other-imports
)

requestBody := graphserviceprincipals.NewAddTokenSigningCertificatePostRequestBody()
displayName := "CN=customDisplayName"
requestBody.SetDisplayName(&displayName) 
endDateTime , err := time.Parse(time.RFC3339, "2024-01-25T00:00:00Z")
requestBody.SetEndDateTime(&endDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
addTokenSigningCertificate, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AddTokenSigningCertificate().Post(context.Background(), requestBody, nil)


```