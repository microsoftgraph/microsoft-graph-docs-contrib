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
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-sdk-go/serviceprincipals"
	  //other-imports
)

requestBody := graphserviceprincipals.NewAddTokenSigningCertificatePostRequestBody()
displayName := "CN=AWSContoso"
requestBody.SetDisplayName(&displayName) 
endDateTime , err := time.Parse(time.RFC3339, "2027-01-22T00:00:00Z")
requestBody.SetEndDateTime(&endDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
addTokenSigningCertificate, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AddTokenSigningCertificate().Post(context.Background(), requestBody, nil)


```