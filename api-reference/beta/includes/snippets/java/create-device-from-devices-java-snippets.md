---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Device device = new Device();
device.setAccountEnabled(true);
LinkedList<AlternativeSecurityId> alternativeSecurityIds = new LinkedList<AlternativeSecurityId>();
AlternativeSecurityId alternativeSecurityId = new AlternativeSecurityId();
alternativeSecurityId.setType(99);
alternativeSecurityId.setIdentityProvider("identityProvider-value");
byte[] key = Base64.getDecoder().decode("base64Y3YxN2E1MWFlYw==");
alternativeSecurityId.setKey(key);
alternativeSecurityIds.add(alternativeSecurityId);
device.setAlternativeSecurityIds(alternativeSecurityIds);
OffsetDateTime approximateLastSignInDateTime = OffsetDateTime.parse("2016-10-19T10:37:00Z");
device.setApproximateLastSignInDateTime(approximateLastSignInDateTime);
device.setDeviceId("deviceId-value");
device.setDeviceMetadata("deviceMetadata-value");
device.setDeviceVersion(99);
Device result = graphClient.devices().post(device);


```