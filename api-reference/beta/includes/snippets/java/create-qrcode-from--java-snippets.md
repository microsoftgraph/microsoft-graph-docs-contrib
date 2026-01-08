---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

QrCode qrCode = new QrCode();
qrCode.setOdataType("#microsoft.graph.qrCode");
OffsetDateTime expireDateTime = OffsetDateTime.parse("2025-12-19T12:00:00Z");
qrCode.setExpireDateTime(expireDateTime);
OffsetDateTime startDateTime = OffsetDateTime.parse("2025-01-01T12:00:00Z");
qrCode.setStartDateTime(startDateTime);
QrCode result = graphClient.users().byUserId("{user-id}").authentication().qrCodePinMethod().standardQRCode().patch(qrCode);


```