---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomAuthenticationExtension customAuthenticationExtension = new CustomAuthenticationExtension();
customAuthenticationExtension.setOdataType("#microsoft.graph.onOtpSendCustomExtension");
AzureAdTokenAuthentication authenticationConfiguration = new AzureAdTokenAuthentication();
authenticationConfiguration.setOdataType("#microsoft.graph.azureAdTokenAuthentication");
authenticationConfiguration.setResourceId("api://onotpsendcustomextension.b2c.expert/fb96de85-2abe-4b02-b45f-64ba122c509e");
customAuthenticationExtension.setAuthenticationConfiguration(authenticationConfiguration);
CustomExtensionClientConfiguration clientConfiguration = new CustomExtensionClientConfiguration();
clientConfiguration.setTimeoutInMilliseconds(2000);
clientConfiguration.setMaximumRetries(1);
customAuthenticationExtension.setClientConfiguration(clientConfiguration);
customAuthenticationExtension.setDescription("Use an external Email provider to send OTP Codes.");
customAuthenticationExtension.setDisplayName("onEmailOtpSendCustomExtension");
HttpRequestEndpoint endpointConfiguration = new HttpRequestEndpoint();
endpointConfiguration.setOdataType("#microsoft.graph.httpRequestEndpoint");
endpointConfiguration.setTargetUrl("https://onotpsendcustomextension.b2c.expert/api/OnOTPCodeSendToTeamsDemo");
customAuthenticationExtension.setEndpointConfiguration(endpointConfiguration);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 behaviorOnError = new ();
behaviorOnError.setOdataType("microsoft.graph.customExtensionBehaviorOnError");
additionalData.put("behaviorOnError", behaviorOnError);
customAuthenticationExtension.setAdditionalData(additionalData);
CustomAuthenticationExtension result = graphClient.identity().customAuthenticationExtensions().post(customAuthenticationExtension);


```