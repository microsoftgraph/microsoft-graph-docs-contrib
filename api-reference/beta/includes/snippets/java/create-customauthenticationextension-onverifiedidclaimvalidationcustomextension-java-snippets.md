---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomAuthenticationExtension customAuthenticationExtension = new CustomAuthenticationExtension();
customAuthenticationExtension.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationCustomExtension");
customAuthenticationExtension.setDisplayName("Verified ID Claim Validation");
customAuthenticationExtension.setDescription("Validate claims from a Verified ID presentation");
HttpRequestEndpoint endpointConfiguration = new HttpRequestEndpoint();
endpointConfiguration.setOdataType("#microsoft.graph.httpRequestEndpoint");
endpointConfiguration.setTargetUrl("https://contoso.azurewebsites.net/api/verifiedIdClaimValidation");
customAuthenticationExtension.setEndpointConfiguration(endpointConfiguration);
AzureAdTokenAuthentication authenticationConfiguration = new AzureAdTokenAuthentication();
authenticationConfiguration.setOdataType("#microsoft.graph.azureAdTokenAuthentication");
authenticationConfiguration.setResourceId("api://contoso.azurewebsites.net/verifiedIdClaimValidation");
customAuthenticationExtension.setAuthenticationConfiguration(authenticationConfiguration);
CustomExtensionClientConfiguration clientConfiguration = new CustomExtensionClientConfiguration();
clientConfiguration.setTimeoutInMilliseconds(2000);
clientConfiguration.setMaximumRetries(1);
customAuthenticationExtension.setClientConfiguration(clientConfiguration);
CustomExtensionBehaviorOnError behaviorOnError = new CustomExtensionBehaviorOnError();
behaviorOnError.setOdataType("#microsoft.graph.customExtensionBehaviorOnError");
customAuthenticationExtension.setBehaviorOnError(behaviorOnError);
CustomAuthenticationExtension result = graphClient.identity().customAuthenticationExtensions().post(customAuthenticationExtension);


```