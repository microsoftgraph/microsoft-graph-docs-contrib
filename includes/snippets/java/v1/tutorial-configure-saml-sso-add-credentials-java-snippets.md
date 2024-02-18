---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal servicePrincipal = new ServicePrincipal();
LinkedList<KeyCredential> keyCredentials = new LinkedList<KeyCredential>();
KeyCredential keyCredential = new KeyCredential();
byte[] customKeyIdentifier = Base64.getDecoder().decode("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=");
keyCredential.setCustomKeyIdentifier(customKeyIdentifier);
OffsetDateTime endDateTime = OffsetDateTime.parse("2021-04-22T22:10:13Z");
keyCredential.setEndDateTime(endDateTime);
keyCredential.setKeyId(UUID.fromString("4c266507-3e74-4b91-aeba-18a25b450f6e"));
OffsetDateTime startDateTime = OffsetDateTime.parse("2020-04-22T21:50:13Z");
keyCredential.setStartDateTime(startDateTime);
keyCredential.setType("X509CertAndPassword");
keyCredential.setUsage("Sign");
byte[] key = Base64.getDecoder().decode("MIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A==");
keyCredential.setKey(key);
keyCredential.setDisplayName("CN=awsAPI");
keyCredentials.add(keyCredential);
KeyCredential keyCredential1 = new KeyCredential();
byte[] customKeyIdentifier1 = Base64.getDecoder().decode("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=");
keyCredential1.setCustomKeyIdentifier(customKeyIdentifier1);
OffsetDateTime endDateTime1 = OffsetDateTime.parse("2021-04-22T22:10:13Z");
keyCredential1.setEndDateTime(endDateTime1);
keyCredential1.setKeyId(UUID.fromString("e35a7d11-fef0-49ad-9f3e-aacbe0a42c42"));
OffsetDateTime startDateTime1 = OffsetDateTime.parse("2020-04-22T21:50:13Z");
keyCredential1.setStartDateTime(startDateTime1);
keyCredential1.setType("AsymmetricX509Cert");
keyCredential1.setUsage("Verify");
byte[] key1 = Base64.getDecoder().decode("MIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg==");
keyCredential1.setKey(key1);
keyCredential1.setDisplayName("CN=awsAPI");
keyCredentials.add(keyCredential1);
servicePrincipal.setKeyCredentials(keyCredentials);
LinkedList<PasswordCredential> passwordCredentials = new LinkedList<PasswordCredential>();
PasswordCredential passwordCredential = new PasswordCredential();
byte[] customKeyIdentifier2 = Base64.getDecoder().decode("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=");
passwordCredential.setCustomKeyIdentifier(customKeyIdentifier2);
passwordCredential.setKeyId(UUID.fromString("4c266507-3e74-4b91-aeba-18a25b450f6e"));
OffsetDateTime endDateTime2 = OffsetDateTime.parse("2022-01-27T19:40:33Z");
passwordCredential.setEndDateTime(endDateTime2);
OffsetDateTime startDateTime2 = OffsetDateTime.parse("2020-04-20T19:40:33Z");
passwordCredential.setStartDateTime(startDateTime2);
passwordCredential.setSecretText("61891f4ee44d");
passwordCredentials.add(passwordCredential);
servicePrincipal.setPasswordCredentials(passwordCredentials);
ServicePrincipal result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").patch(servicePrincipal);


```