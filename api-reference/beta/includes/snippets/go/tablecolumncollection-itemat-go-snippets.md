---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/Workbook/Tables/Item/Columns/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewColumn()
additionalData := map[string]interface{}{
index := graphmodels.New()
	requestBody.SetIndex(index)
}
requestBody.SetAdditionalData(additionalData)

graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Workbook().TablesById("workbookTable-id").ColumnsById("workbookTableColumn-id").Post(context.Background(), requestBody, nil)


```