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
OffsetDateTime startDateTime = OffsetDateTime.parse("2023-01-12T09:31:26Z");
keyCredential.setStartDateTime(startDateTime);
keyCredential.setType("AsymmetricX509Cert");
keyCredential.setUsage("Verify");
byte[] key = Base64.getDecoder().decode("base64MIIDADCCAeigAwIBAgIQejfrj3S974xI//npv7hFHTANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExNDAeFw0yMzAxMTIwOTA4NThaFw0yNDAxMTIwOTI4NThaMBMxETAPBgNVBAMMCDIwMjMwMTE0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt5vEj6j1l5wOVHR4eDGe77HWslaIVJ1NqxrXPm/...+R+U7sboj+kUvmFzXI+Ge73Liu8egL2NzOHHpO43calWgq36a9YW1yhBQR1ioEchu6jmudW3rF6ktmVqQ==");
keyCredential.setKey(key);
keyCredential.setDisplayName("CN=20230114");
keyCredentials.add(keyCredential);
KeyCredential keyCredential1 = new KeyCredential();
byte[] customKeyIdentifier = Base64.getDecoder().decode("52ED9B5038A47B9E2E2190715CC238359D4F8F73");
keyCredential1.setCustomKeyIdentifier(customKeyIdentifier);
keyCredential1.setType("AsymmetricX509Cert");
keyCredential1.setUsage("Verify");
byte[] key1 = Base64.getDecoder().decode("base64MIIDADCCAeigAwIBAgIQfoIvchhpToxKEPI4iMrU1TANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMzAeFw0yMzAxMTIwODI3NTJaFw0yNDAxMTIwODQ3NTJaMBMxETAPBgNVBAMMCDIwMjMwMTEzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw+iqg1nMjYmFcFJh/.../S5X6qoEOyJBgtfpSBANWAdA==");
keyCredential1.setKey(key1);
keyCredential1.setDisplayName("CN=20230113");
keyCredentials.add(keyCredential1);
application.setKeyCredentials(keyCredentials);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```