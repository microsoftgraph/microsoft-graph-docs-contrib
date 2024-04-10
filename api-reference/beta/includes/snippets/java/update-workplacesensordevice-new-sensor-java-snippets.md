---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkplaceSensorDevice workplaceSensorDevice = new WorkplaceSensorDevice();
workplaceSensorDevice.setDeviceId("contoso_9D6816");
workplaceSensorDevice.setDisplayName("Contoso 9D6816 Device");
workplaceSensorDevice.setDescription("Contoso 9D6816 Device");
workplaceSensorDevice.setMacAddress("00:0A:95:9D:68:16");
workplaceSensorDevice.setManufacturer("Contoso");
workplaceSensorDevice.setIpV4Address("192.168.1.100");
workplaceSensorDevice.setIpV6Address("2001:db8::ff00:42:8329");
workplaceSensorDevice.setPlaceId("acfa3bc0-2b83-425b-8910-84a0250e9671");
LinkedList<String> tags = new LinkedList<String>();
tags.add("Building A");
tags.add("Floor 3");
tags.add("Room 301");
tags.add("Conference Room");
workplaceSensorDevice.setTags(tags);
LinkedList<WorkplaceSensor> sensors = new LinkedList<WorkplaceSensor>();
WorkplaceSensor workplaceSensor = new WorkplaceSensor();
workplaceSensor.setSensorType(WorkplaceSensorType.Occupancy);
sensors.add(workplaceSensor);
WorkplaceSensor workplaceSensor1 = new WorkplaceSensor();
workplaceSensor1.setSensorType(WorkplaceSensorType.PeopleCount);
sensors.add(workplaceSensor1);
WorkplaceSensor workplaceSensor2 = new WorkplaceSensor();
workplaceSensor2.setSensorType(WorkplaceSensorType.InferredOccupancy);
sensors.add(workplaceSensor2);
workplaceSensorDevice.setSensors(sensors);
WorkplaceSensorDevice result = graphClient.workplace().sensorDevices().byWorkplaceSensorDeviceId("{workplaceSensorDevice-id}").patch(workplaceSensorDevice);


```