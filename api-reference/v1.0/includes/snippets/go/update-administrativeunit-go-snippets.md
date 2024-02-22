---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAdministrativeUnit()
displayName := "Greater Seattle District Technical Schools"
requestBody.SetDisplayName(&displayName) 

administrativeUnits, err := graphClient.Directory().AdministrativeUnits().ByAdministrativeUnitId("administrativeUnit-id").Patch(context.Background(), requestBody, nil)


```