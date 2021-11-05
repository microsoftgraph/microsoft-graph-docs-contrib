---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPrinter()
location := msgraphsdk.NewPrinterLocation()
requestBody.SetLocation(location)
latitude := float64(1.1)
location.SetLatitude(&latitude)
longitude := float64(2.2)
location.SetLongitude(&longitude)
altitudeInMeters := int32(3)
location.SetAltitudeInMeters(&altitudeInMeters)
requestBody.SetAdditionalData(map[string]interface{}{
	"name": "PrinterName",
}
options := &msgraphsdk.PrinterRequestBuilderPatchOptions{
	Body: requestBody,
}
printerId := "printer-id"
graphClient.Print().PrintersById(&printerId).Patch(options);


```