---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWorkplaceSensorDevice()
deviceId := "contoso_9D6816"
requestBody.SetDeviceId(&deviceId) 
displayName := "Contoso 9D6816 Device"
requestBody.SetDisplayName(&displayName) 
description := "Contoso 9D6816 Device"
requestBody.SetDescription(&description) 
macAddress := "00:0A:95:9D:68:16"
requestBody.SetMacAddress(&macAddress) 
manufacturer := "Contoso"
requestBody.SetManufacturer(&manufacturer) 
ipV4Address := "192.168.1.100"
requestBody.SetIpV4Address(&ipV4Address) 
ipV6Address := "2001:db8::ff00:42:8329"
requestBody.SetIpV6Address(&ipV6Address) 
placeId := "acfa3bc0-2b83-425b-8910-84a0250e9671"
requestBody.SetPlaceId(&placeId) 
tags := []string {
	"Building A",
	"Floor 3",
	"Room 301",
	"Conference Room",
}
requestBody.SetTags(tags)


workplaceSensor := graphmodels.NewWorkplaceSensor()
sensorType := graphmodels.PEOPLECOUNT_WORKPLACESENSORTYPE 
workplaceSensor.SetSensorType(&sensorType) 

sensors := []graphmodels.WorkplaceSensorable {
	workplaceSensor,
}
requestBody.SetSensors(sensors)

sensorDevices, err := graphClient.Workplace().SensorDevices().ByWorkplaceSensorDeviceId("workplaceSensorDevice-id").Patch(context.Background(), requestBody, nil)


```