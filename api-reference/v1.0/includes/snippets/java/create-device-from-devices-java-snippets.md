---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Device device = new Device();
device.setAccountEnabled(false);
LinkedList<AlternativeSecurityId> alternativeSecurityIds = new LinkedList<AlternativeSecurityId>();
AlternativeSecurityId alternativeSecurityId = new AlternativeSecurityId();
alternativeSecurityId.setType(2);
byte[] key = Base64.getDecoder().decode("base64Y3YxN2E1MWFlYw==");
alternativeSecurityId.setKey(key);
alternativeSecurityIds.add(alternativeSecurityId);
device.setAlternativeSecurityIds(alternativeSecurityIds);
device.setDeviceId("4c299165-6e8f-4b45-a5ba-c5d250a707ff");
device.setDisplayName("Test device");
device.setOperatingSystem("linux");
device.setOperatingSystemVersion("1");
Device result = graphClient.devices().post(device);


```