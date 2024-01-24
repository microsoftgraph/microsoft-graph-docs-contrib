---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcDeviceImage cloudPcDeviceImage = new CloudPcDeviceImage();
cloudPcDeviceImage.displayName = "ImageForDev";
cloudPcDeviceImage.version = "0.0.1";
cloudPcDeviceImage.sourceImageResourceId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage";

graphClient.deviceManagement().virtualEndpoint().deviceImages()
	.buildRequest()
	.post(cloudPcDeviceImage);

```