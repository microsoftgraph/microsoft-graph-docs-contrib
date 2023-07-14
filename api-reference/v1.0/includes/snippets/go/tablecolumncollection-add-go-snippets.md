---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewAddPostRequestBody()
index := int32(3)
requestBody.SetIndex(&index) 


json := graphmodels.NewJson()

values := []graphmodels.Jsonable {
	json,
}
requestBody.SetValues(values)

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Tables().ByTableId("workbookTable-id").Columns().Add().Post(context.Background(), requestBody, nil)


```