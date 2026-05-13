---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationEventListener authenticationEventListener = new AuthenticationEventListener();
authenticationEventListener.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationListener");
authenticationEventListener.setDisplayName("Verified ID Claim Validation Listener (updated)");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 handler = new ();
handler.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler");
 configuration = new ();
configuration.setOdataType("#microsoft.graph.customExtensionOverwriteConfiguration");
 clientConfiguration = new ();
clientConfiguration.setOdataType("#microsoft.graph.customExtensionClientConfiguration");
clientConfiguration.setMaximumRetries(1);
clientConfiguration.setTimeoutInMilliseconds(2000);
configuration.setClientConfiguration(clientConfiguration);
 behaviorOnError = new ();
behaviorOnError.setOdataType("#microsoft.graph.customExtensionBehaviorOnError");
configuration.setBehaviorOnError(behaviorOnError);
handler.setConfiguration(configuration);
additionalData.put("handler", handler);
authenticationEventListener.setAdditionalData(additionalData);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().byAuthenticationEventListenerId("{authenticationEventListener-id}").patch(authenticationEventListener);


```