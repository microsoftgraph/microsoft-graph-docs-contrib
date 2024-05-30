---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)

requestBody := graphidentity.NewUploadClientCertificatePostRequestBody()
pkcs12Value := "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA"
requestBody.SetPkcs12Value(&pkcs12Value) 
password := "<password>"
requestBody.SetPassword(&password) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
uploadClientCertificate, err := graphClient.Identity().ApiConnectors().ByIdentityApiConnectorId("identityApiConnector-id").UploadClientCertificate().Post(context.Background(), requestBody, nil)


```