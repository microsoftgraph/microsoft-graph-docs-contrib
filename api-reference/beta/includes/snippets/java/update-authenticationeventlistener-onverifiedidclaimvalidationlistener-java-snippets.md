---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnVerifiedIdClaimValidationListener authenticationEventListener = new OnVerifiedIdClaimValidationListener();
authenticationEventListener.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationListener");
authenticationEventListener.setDisplayName("Verified ID Claim Validation Listener (updated)");
OnVerifiedIdClaimValidationCustomExtensionHandler handler = new OnVerifiedIdClaimValidationCustomExtensionHandler();
handler.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler");
CustomExtensionOverwriteConfiguration configuration = new CustomExtensionOverwriteConfiguration();
configuration.setOdataType("#microsoft.graph.customExtensionOverwriteConfiguration");
CustomExtensionClientConfiguration clientConfiguration = new CustomExtensionClientConfiguration();
clientConfiguration.setOdataType("#microsoft.graph.customExtensionClientConfiguration");
clientConfiguration.setMaximumRetries(1);
clientConfiguration.setTimeoutInMilliseconds(2000);
configuration.setClientConfiguration(clientConfiguration);
CustomExtensionBehaviorOnError behaviorOnError = new CustomExtensionBehaviorOnError();
behaviorOnError.setOdataType("#microsoft.graph.customExtensionBehaviorOnError");
configuration.setBehaviorOnError(behaviorOnError);
handler.setConfiguration(configuration);
authenticationEventListener.setHandler(handler);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().byAuthenticationEventListenerId("{authenticationEventListener-id}").patch(authenticationEventListener);


```