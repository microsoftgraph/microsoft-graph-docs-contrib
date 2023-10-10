---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAdministrativeUnit()
displayName := "Executive Division"
requestBody.SetDisplayName(&displayName) 
description := "Executive division administration"
requestBody.SetDescription(&description) 
isMemberManagementRestricted := true
requestBody.SetIsMemberManagementRestricted(&isMemberManagementRestricted) 

administrativeUnits, err := graphClient.AdministrativeUnits().Post(context.Background(), requestBody, nil)


```