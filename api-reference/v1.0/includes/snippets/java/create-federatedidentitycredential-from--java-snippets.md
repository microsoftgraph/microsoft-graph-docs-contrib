---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FederatedIdentityCredential federatedIdentityCredential = new FederatedIdentityCredential();
federatedIdentityCredential.name = "testing02";
federatedIdentityCredential.issuer = "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0";
federatedIdentityCredential.subject = "a7d388c3-5e3f-4959-ac7d-786b3383006a";
LinkedList<String> audiencesList = new LinkedList<String>();
audiencesList.add("api://AzureADTokenExchange");
federatedIdentityCredential.audiences = audiencesList;

graphClient.applications("bcd7c908-1c4d-4d48-93ee-ff38349a75c8").federatedIdentityCredentials()
	.buildRequest()
	.post(federatedIdentityCredential);

```