---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Location", "https://graph.microsoft.com/beta/identity/b2cUserFlows('B2C_1_Customer')"));

B2cIdentityUserFlow b2cIdentityUserFlow = new B2cIdentityUserFlow();
b2cIdentityUserFlow.id = "Customer";
b2cIdentityUserFlow.userFlowType = UserFlowType.SIGN_UP_OR_SIGN_IN;
b2cIdentityUserFlow.userFlowTypeVersion = 3;
LinkedList<IdentityProvider> identityProvidersList = new LinkedList<IdentityProvider>();
IdentityProvider identityProviders = new IdentityProvider();
identityProviders.id = "Facebook-OAuth";
identityProvidersList.add(identityProviders);
IdentityProviderCollectionResponse identityProviderCollectionResponse = new IdentityProviderCollectionResponse();
identityProviderCollectionResponse.value = identityProvidersList;
IdentityProviderCollectionPage identityProviderCollectionPage = new IdentityProviderCollectionPage(identityProviderCollectionResponse, null);
b2cIdentityUserFlow.identityProviders = identityProviderCollectionPage;

graphClient.identity().b2cUserFlows()
	.buildRequest( requestOptions )
	.post(b2cIdentityUserFlow);

```