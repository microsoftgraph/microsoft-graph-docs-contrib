---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphworkplace "github.com/microsoftgraph/msgraph-beta-sdk-go/workplace"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphworkplace.NewIngestTelemetryPostRequestBody()


workplaceSensorDeviceTelemetry := graphmodels.NewWorkplaceSensorDeviceTelemetry()
deviceId := "contoso_9D6816"
workplaceSensorDeviceTelemetry.SetDeviceId(&deviceId) 
sensorType := graphmodels.OCCUPANCY_WORKPLACESENSORTYPE 
workplaceSensorDeviceTelemetry.SetSensorType(&sensorType) 
boolValue := false
workplaceSensorDeviceTelemetry.SetBoolValue(&boolValue) 
timestamp , err := time.Parse(time.RFC3339, "2021-03-31T09:36:05.144Z")
workplaceSensorDeviceTelemetry.SetTimestamp(&timestamp) 

telemetry := []graphmodels.WorkplaceSensorDeviceTelemetryable {
	workplaceSensorDeviceTelemetry,
}
requestBody.SetTelemetry(telemetry)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Workplace().SensorDevices().IngestTelemetry().Post(context.Background(), requestBody, nil)


```