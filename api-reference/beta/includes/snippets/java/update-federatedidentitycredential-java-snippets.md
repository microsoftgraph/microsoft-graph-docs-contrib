---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FederatedIdentityCredential federatedIdentityCredential = new FederatedIdentityCredential();
federatedIdentityCredential.setName("testing02");
federatedIdentityCredential.setIssuer("https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0");
federatedIdentityCredential.setSubject("a7d388c3-5e3f-4959-ac7d-786b3383006a");
federatedIdentityCredential.setDescription("Updated description");
LinkedList<String> audiences = new LinkedList<String>();
audiences.add("api://AzureADTokenExchange");
federatedIdentityCredential.setAudiences(audiences);
FederatedIdentityCredential result = graphClient.applications().byApplicationId("{application-id}").federatedIdentityCredentials().byFederatedIdentityCredentialId("{federatedIdentityCredential-id}").patch(federatedIdentityCredential);


```