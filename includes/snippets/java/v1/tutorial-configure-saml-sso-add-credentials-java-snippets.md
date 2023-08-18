---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = new ServicePrincipal();
LinkedList<KeyCredential> keyCredentialsList = new LinkedList<KeyCredential>();
KeyCredential keyCredentials = new KeyCredential();
keyCredentials.customKeyIdentifier = Base64.getDecoder().decode("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=");
keyCredentials.endDateTime = OffsetDateTimeSerializer.deserialize("2021-04-22T22:10:13Z");
keyCredentials.keyId = UUID.fromString("4c266507-3e74-4b91-aeba-18a25b450f6e");
keyCredentials.startDateTime = OffsetDateTimeSerializer.deserialize("2020-04-22T21:50:13Z");
keyCredentials.type = "X509CertAndPassword";
keyCredentials.usage = "Sign";
keyCredentials.key = Base64.getDecoder().decode("MIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A==");
keyCredentials.displayName = "CN=awsAPI";
keyCredentialsList.add(keyCredentials);
KeyCredential keyCredentials1 = new KeyCredential();
keyCredentials1.customKeyIdentifier = Base64.getDecoder().decode("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=");
keyCredentials1.endDateTime = OffsetDateTimeSerializer.deserialize("2021-04-22T22:10:13Z");
keyCredentials1.keyId = UUID.fromString("e35a7d11-fef0-49ad-9f3e-aacbe0a42c42");
keyCredentials1.startDateTime = OffsetDateTimeSerializer.deserialize("2020-04-22T21:50:13Z");
keyCredentials1.type = "AsymmetricX509Cert";
keyCredentials1.usage = "Verify";
keyCredentials1.key = Base64.getDecoder().decode("MIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg==");
keyCredentials1.displayName = "CN=awsAPI";
keyCredentialsList.add(keyCredentials1);
servicePrincipal.keyCredentials = keyCredentialsList;
LinkedList<PasswordCredential> passwordCredentialsList = new LinkedList<PasswordCredential>();
PasswordCredential passwordCredentials = new PasswordCredential();
passwordCredentials.customKeyIdentifier = Base64.getDecoder().decode("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=");
passwordCredentials.keyId = UUID.fromString("4c266507-3e74-4b91-aeba-18a25b450f6e");
passwordCredentials.endDateTime = OffsetDateTimeSerializer.deserialize("2022-01-27T19:40:33Z");
passwordCredentials.startDateTime = OffsetDateTimeSerializer.deserialize("2020-04-20T19:40:33Z");
passwordCredentials.secretText = "61891f4ee44d";
passwordCredentialsList.add(passwordCredentials);
servicePrincipal.passwordCredentials = passwordCredentialsList;

graphClient.servicePrincipals("f47a6776-bca7-4f2e-bc6c-eec59d058e3e")
	.buildRequest()
	.patch(servicePrincipal);

```