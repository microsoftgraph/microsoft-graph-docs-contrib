---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
LinkedList<KeyCredential> keyCredentialsList = new LinkedList<KeyCredential>();
KeyCredential keyCredentials = new KeyCredential();
keyCredentials.endDateTime = OffsetDateTimeSerializer.deserialize("2024-01-11T15:31:26Z");
keyCredentials.startDateTime = OffsetDateTimeSerializer.deserialize("2023-01-12T09:31:26Z");
keyCredentials.type = "AsymmetricX509Cert";
keyCredentials.usage = "Verify";
keyCredentials.key = Base64.getDecoder().decode("base64MIIDADCCAeigAwIBAgIQejfrj3S974xI//npv7hFHTANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExNDAeFw0yMzAxMTIwOTA4NThaFw0yNDAxMTIwOTI4NThaMBMxETAPBgNVBAMMCDIwMjMwMTE0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt5vEj6j1l5wOVHR4eDGe77HWslaIVJ1NqxrXPm/...+R+U7sboj+kUvmFzXI+Ge73Liu8egL2NzOHHpO43calWgq36a9YW1yhBQR1ioEchu6jmudW3rF6ktmVqQ==");
keyCredentials.displayName = "CN=20230114";
keyCredentialsList.add(keyCredentials);
KeyCredential keyCredentials1 = new KeyCredential();
keyCredentials1.customKeyIdentifier = Base64.getDecoder().decode("52ED9B5038A47B9E2E2190715CC238359D4F8F73");
keyCredentials1.type = "AsymmetricX509Cert";
keyCredentials1.usage = "Verify";
keyCredentials1.key = Base64.getDecoder().decode("base64MIIDADCCAeigAwIBAgIQfoIvchhpToxKEPI4iMrU1TANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMzAeFw0yMzAxMTIwODI3NTJaFw0yNDAxMTIwODQ3NTJaMBMxETAPBgNVBAMMCDIwMjMwMTEzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw+iqg1nMjYmFcFJh/.../S5X6qoEOyJBgtfpSBANWAdA==");
keyCredentials1.displayName = "CN=20230113";
keyCredentialsList.add(keyCredentials1);
application.keyCredentials = keyCredentialsList;

graphClient.applications("bb77f42f-dacb-4ece-b3e6-285e63c24d52")
	.buildRequest()
	.patch(application);

```