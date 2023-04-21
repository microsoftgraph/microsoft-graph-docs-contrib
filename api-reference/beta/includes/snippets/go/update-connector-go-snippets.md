---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPrintConnector()
displayName := "ConnectorName"
requestBody.SetDisplayName(&displayName) 
fullyQualifiedDomainName := "CONNECTOR-MACHINE"
requestBody.SetFullyQualifiedDomainName(&fullyQualifiedDomainName) 
operatingSystem := "Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555"
requestBody.SetOperatingSystem(&operatingSystem) 
appVersion := "0.19.7338.23496"
requestBody.SetAppVersion(&appVersion) 
location := graphmodels.NewPrinterLocation()
latitude := float64(1.1)
location.SetLatitude(&latitude) 
longitude := float64(2.2)
location.SetLongitude(&longitude) 
altitudeInMeters := int32(3)
location.SetAltitudeInMeters(&altitudeInMeters) 
requestBody.SetLocation(location)

result, err := graphClient.Print().Connectors().ByConnectorId("printConnector-id").Patch(context.Background(), requestBody, nil)


```