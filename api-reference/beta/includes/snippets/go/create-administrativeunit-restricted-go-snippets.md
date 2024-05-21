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

requestBody := graphmodels.NewAdministrativeUnit()
displayName := "Executive Division"
requestBody.SetDisplayName(&displayName) 
description := "Executive division administration"
requestBody.SetDescription(&description) 
isMemberManagementRestricted := true
requestBody.SetIsMemberManagementRestricted(&isMemberManagementRestricted) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
administrativeUnits, err := graphClient.AdministrativeUnits().Post(context.Background(), requestBody, nil)


```