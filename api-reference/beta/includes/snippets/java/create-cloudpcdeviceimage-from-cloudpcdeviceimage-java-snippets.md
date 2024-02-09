---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcDeviceImage cloudPcDeviceImage = new CloudPcDeviceImage();
cloudPcDeviceImage.setDisplayName("ImageForDev");
cloudPcDeviceImage.setVersion("0.0.1");
cloudPcDeviceImage.setSourceImageResourceId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage");
CloudPcDeviceImage result = graphClient.deviceManagement().virtualEndpoint().deviceImages().post(cloudPcDeviceImage);


```