---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPrinter()
name := "PrinterName"
requestBody.SetName(&name) 
location := graphmodels.NewPrinterLocation()
latitude := float64(1.1)
location.SetLatitude(&latitude) 
longitude := float64(2.2)
location.SetLongitude(&longitude) 
altitudeInMeters := int32(3)
location.SetAltitudeInMeters(&altitudeInMeters) 
requestBody.SetLocation(location)

graphClient.Print().PrintersById("printer-id").Patch(context.Background(), requestBody, nil)


```