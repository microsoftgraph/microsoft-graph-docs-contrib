---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Directory().AdministrativeUnits().ByAdministrativeUnitId("administrativeUnit-id").Members().ByMemberId("directoryObject-id").Ref().Delete(context.Background(), nil)


```