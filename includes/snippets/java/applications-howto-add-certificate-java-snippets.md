---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
LinkedList<KeyCredential> keyCredentialsList = new LinkedList<KeyCredential>();
KeyCredential keyCredentials = new KeyCredential();
keyCredentials.endDateTime = OffsetDateTimeSerializer.deserialize("2024-01-11T15:31:26Z");
keyCredentials.startDateTime = OffsetDateTimeSerializer.deserialize("2023-01-12T15:31:26Z");
keyCredentials.type = "AsymmetricX509Cert";
keyCredentials.usage = "Verify";
keyCredentials.key = Base64.getDecoder().decode("base64MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/...laxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A==");
keyCredentials.displayName = "CN=20230112";
keyCredentialsList.add(keyCredentials);
application.keyCredentials = keyCredentialsList;

graphClient.applications("bb77f42f-dacb-4ece-b3e6-285e63c24d52")
	.buildRequest()
	.patch(application);

```