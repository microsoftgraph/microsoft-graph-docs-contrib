---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

QrPin qrPin = new QrPin();
qrPin.setOdataType("#microsoft.graph.qrPin");
qrPin.setCode("09599786");
QrPin result = graphClient.users().byUserId("{user-id}").authentication().qrCodePinMethod().pin().patch(qrPin);


```