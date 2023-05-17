---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/Tables/Item/Rows/Add"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddPostRequestBody()
index := int32(5)
requestBody.SetIndex(&index) 
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

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Tables().ByTableId("workbookTable-id").Rows().Add().Post(context.Background(), requestBody, nil)


```