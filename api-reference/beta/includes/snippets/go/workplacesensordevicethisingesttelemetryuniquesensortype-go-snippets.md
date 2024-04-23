---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphworkplace "github.com/microsoftgraph/msgraph-beta-sdk-go/workplace"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

graphClient.Workplace().SensorDevices().IngestTelemetry().Post(context.Background(), requestBody, nil)


```