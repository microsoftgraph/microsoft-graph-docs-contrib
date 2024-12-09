---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityProviderBase identityProviderBase = new IdentityProviderBase();
identityProviderBase.setOdataType("#microsoft.graph.OidcIdentityProvider");
identityProviderBase.setDisplayName("Contoso AAD B2C");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("clientId", "00001111-aaaa-2222-bbbb-3333cccc4444");
additionalData.put("issuer", "https://contoso.b2clogin.com/00001111-aaaa-2222-bbbb-3333cccc4444/v2.0/");
additionalData.put("wellKnownEndpoint", "https://contoso.b2clogin.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration?p=B2C_1A_SIGNINEMAIL");
additionalData.put("responseType", "code");
additionalData.put("scope", "openid profile email offline_access");
 clientAuthentication = new ();
clientAuthentication.setOdataType("#microsoft.graph.oidcClientSecretAuthentication");
clientAuthentication.setClientSecret("4294967296");
additionalData.put("clientAuthentication", clientAuthentication);
 inboundClaimMapping = new ();
inboundClaimMapping.setSub("sub");
inboundClaimMapping.setName("name");
inboundClaimMapping.setGivenName("given_name");
inboundClaimMapping.setFamilyName("family_name");
inboundClaimMapping.setEmail("email");
inboundClaimMapping.setEmailVerified("email_verified");
inboundClaimMapping.setPhoneNumber("phone_number");
inboundClaimMapping.setPhoneNumberVerified("phone_number_verified");
 address = new ();
address.setStreetAddress("street_address");
address.setLocality("locality");
address.setRegion("region");
address.setPostalCode("postal_code");
address.setCountry("country");
inboundClaimMapping.setAddress(address);
additionalData.put("inboundClaimMapping", inboundClaimMapping);
identityProviderBase.setAdditionalData(additionalData);
IdentityProviderBase result = graphClient.identity().identityProviders().post(identityProviderBase);


```