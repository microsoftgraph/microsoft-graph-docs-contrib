---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
LinkedList<KeyCredential> keyCredentials = new LinkedList<KeyCredential>();
KeyCredential keyCredential = new KeyCredential();
OffsetDateTime endDateTime = OffsetDateTime.parse("2024-01-11T15:31:26Z");
keyCredential.setEndDateTime(endDateTime);
OffsetDateTime startDateTime = OffsetDateTime.parse("2023-01-12T15:31:26Z");
keyCredential.setStartDateTime(startDateTime);
keyCredential.setType("AsymmetricX509Cert");
keyCredential.setUsage("Verify");
byte[] key = Base64.getDecoder().decode("base64MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/...laxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A==");
keyCredential.setKey(key);
keyCredential.setDisplayName("CN=20230112");
keyCredentials.add(keyCredential);
application.setKeyCredentials(keyCredentials);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```