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


requestBody := graphmodels.NewPrinter()
location := graphmodels.NewPrinterLocation()
latitude := float64(1.1)
location.SetLatitude(&latitude) 
longitude := float64(2.2)
location.SetLongitude(&longitude) 
altitudeInMeters := int32(3)
location.SetAltitudeInMeters(&altitudeInMeters) 
requestBody.SetLocation(location)
additionalData := map[string]interface{}{
	"name" : "PrinterName", 
}
requestBody.SetAdditionalData(additionalData)

printers, err := graphClient.Print().Printers().ByPrinterId("printer-id").Patch(context.Background(), requestBody, nil)


```