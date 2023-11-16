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


requestBody := graphmodels.NewWorkbookTableRow()
values := []graphmodels.Jsonable {
	json := []graphmodels.Numberable {
 := int32(1)
requestBody.Set(&) 
 := int32(2)
requestBody.Set(&) 
 := int32(3)
requestBody.Set(&)
	}
	json := []graphmodels.Numberable {
 := int32(4)
requestBody.Set(&) 
 := int32(5)
requestBody.Set(&) 
 := int32(6)
requestBody.Set(&)
	}
}
requestBody.SetValues(values)

rows, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Tables().ByWorkbookTableId("workbookTable-id").Rows().Post(context.Background(), requestBody, nil)


```