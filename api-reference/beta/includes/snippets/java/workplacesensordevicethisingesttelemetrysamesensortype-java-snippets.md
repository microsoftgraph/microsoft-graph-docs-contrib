---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.workplace.sensordevices.ingesttelemetry.IngestTelemetryPostRequestBody ingestTelemetryPostRequestBody = new com.microsoft.graph.beta.workplace.sensordevices.ingesttelemetry.IngestTelemetryPostRequestBody();
LinkedList<WorkplaceSensorDeviceTelemetry> telemetry = new LinkedList<WorkplaceSensorDeviceTelemetry>();
WorkplaceSensorDeviceTelemetry workplaceSensorDeviceTelemetry = new WorkplaceSensorDeviceTelemetry();
workplaceSensorDeviceTelemetry.setDeviceId("contoso_9D6816");
workplaceSensorDeviceTelemetry.setSensorId("occupancy_1");
workplaceSensorDeviceTelemetry.setSensorType(WorkplaceSensorType.Occupancy);
workplaceSensorDeviceTelemetry.setBoolValue(false);
OffsetDateTime timestamp = OffsetDateTime.parse("2021-03-31T09:36:05.144Z");
workplaceSensorDeviceTelemetry.setTimestamp(timestamp);
telemetry.add(workplaceSensorDeviceTelemetry);
WorkplaceSensorDeviceTelemetry workplaceSensorDeviceTelemetry1 = new WorkplaceSensorDeviceTelemetry();
workplaceSensorDeviceTelemetry1.setDeviceId("contoso_9D6816");
workplaceSensorDeviceTelemetry1.setSensorId("occupancy_2");
workplaceSensorDeviceTelemetry1.setSensorType(WorkplaceSensorType.Occupancy);
workplaceSensorDeviceTelemetry1.setBoolValue(false);
OffsetDateTime timestamp1 = OffsetDateTime.parse("2021-03-31T09:36:05.144Z");
workplaceSensorDeviceTelemetry1.setTimestamp(timestamp1);
telemetry.add(workplaceSensorDeviceTelemetry1);
ingestTelemetryPostRequestBody.setTelemetry(telemetry);
graphClient.workplace().sensorDevices().ingestTelemetry().post(ingestTelemetryPostRequestBody);


```