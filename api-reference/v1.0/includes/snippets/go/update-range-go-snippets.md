---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/Worksheets/Item/RangeWithAddress"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRange(address='{address}')PatchRequestBody()
additionalData := map[string]interface{}{
	values := []graphmodels.Arrayable {
		 := []string {
			"Hello",
			"100",

		}
		 := []string {
			"1/1/2016",
			 := null
requestBody.Set(&) 

		}

	}
	formulas := []graphmodels.Arrayable {
		 := []graphmodels.Nullable {
			 := null
requestBody.Set(&) 
			 := null
requestBody.Set(&) 

		}
		 := []graphmodels.Nullable {
			 := null
requestBody.Set(&) 
			"=B1*2",

		}

	}
	numberFormat := []graphmodels.Arrayable {
		 := []graphmodels.Nullable {
			 := null
requestBody.Set(&) 
			 := null
requestBody.Set(&) 

		}
		 := []string {
			"m-ddd",
			 := null
requestBody.Set(&) 

		}

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Worksheets().ByWorksheetId("workbookWorksheet-id").Range(address='{address}')().Patch(context.Background(), requestBody, nil)


```