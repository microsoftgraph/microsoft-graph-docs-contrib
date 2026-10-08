---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewApprovedClientApp()
id := "cd57c330-a543-4249-9486-c1c257341de6"
requestBody.SetId(&id) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
approvedClientApps, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").RemoteDesktopSecurityConfiguration().ApprovedClientApps().Post(context.Background(), requestBody, nil)


```