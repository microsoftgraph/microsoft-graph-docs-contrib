---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/Tables/Item/Columns/Add"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddPostRequestBody()
index := int32(3)
requestBody.SetIndex(&index) 


json := graphmodels.New()

values := []graphmodels.Jsonable {
	json,

}
requestBody.SetValues(values)

result, err := graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Workbook().TablesById("workbookTable-id").Columns().Add().Post(context.Background(), requestBody, nil)


```