---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnTokenIssuanceStartCustomExtension customAuthenticationExtension = new OnTokenIssuanceStartCustomExtension();
customAuthenticationExtension.setOdataType("#microsoft.graph.onTokenIssuanceStartCustomExtension");
customAuthenticationExtension.setDisplayName("onTokenIssuanceStartCustomExtension");
customAuthenticationExtension.setDescription("Fetch additional claims from custom user store");
HttpRequestEndpoint endpointConfiguration = new HttpRequestEndpoint();
endpointConfiguration.setOdataType("#microsoft.graph.httpRequestEndpoint");
endpointConfiguration.setTargetUrl("https://authenticationeventsAPI.contoso.com");
customAuthenticationExtension.setEndpointConfiguration(endpointConfiguration);
AzureAdTokenAuthentication authenticationConfiguration = new AzureAdTokenAuthentication();
authenticationConfiguration.setOdataType("#microsoft.graph.azureAdTokenAuthentication");
authenticationConfiguration.setResourceId("api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4");
customAuthenticationExtension.setAuthenticationConfiguration(authenticationConfiguration);
CustomExtensionClientConfiguration clientConfiguration = new CustomExtensionClientConfiguration();
clientConfiguration.setTimeoutInMilliseconds(2000);
clientConfiguration.setMaximumRetries(1);
customAuthenticationExtension.setClientConfiguration(clientConfiguration);
LinkedList<OnTokenIssuanceStartReturnClaim> claimsForTokenConfiguration = new LinkedList<OnTokenIssuanceStartReturnClaim>();
OnTokenIssuanceStartReturnClaim onTokenIssuanceStartReturnClaim = new OnTokenIssuanceStartReturnClaim();
onTokenIssuanceStartReturnClaim.setClaimIdInApiResponse("DateOfBirth");
claimsForTokenConfiguration.add(onTokenIssuanceStartReturnClaim);
OnTokenIssuanceStartReturnClaim onTokenIssuanceStartReturnClaim1 = new OnTokenIssuanceStartReturnClaim();
onTokenIssuanceStartReturnClaim1.setClaimIdInApiResponse("CustomRoles");
claimsForTokenConfiguration.add(onTokenIssuanceStartReturnClaim1);
customAuthenticationExtension.setClaimsForTokenConfiguration(claimsForTokenConfiguration);
CustomAuthenticationExtension result = graphClient.identity().customAuthenticationExtensions().post(customAuthenticationExtension);


```