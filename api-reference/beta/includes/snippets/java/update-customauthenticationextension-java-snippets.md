---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnTokenIssuanceStartCustomExtension customAuthenticationExtension = new OnTokenIssuanceStartCustomExtension();
customAuthenticationExtension.displayName = "onTokenIssuanceStartCustomExtension";
customAuthenticationExtension.description = "Fetch additional claims from custom user store";
HttpRequestEndpoint endpointConfiguration = new HttpRequestEndpoint();
endpointConfiguration.targetUrl = "https://authenticationeventsAPI.contoso.com";
customAuthenticationExtension.endpointConfiguration = endpointConfiguration;
AzureAdTokenAuthentication authenticationConfiguration = new AzureAdTokenAuthentication();
authenticationConfiguration.resourceId = "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4";
customAuthenticationExtension.authenticationConfiguration = authenticationConfiguration;
LinkedList<OnTokenIssuanceStartReturnClaim> claimsForTokenConfigurationList = new LinkedList<OnTokenIssuanceStartReturnClaim>();
OnTokenIssuanceStartReturnClaim claimsForTokenConfiguration = new OnTokenIssuanceStartReturnClaim();
claimsForTokenConfiguration.claimIdInApiResponse = "DateOfBirth";
claimsForTokenConfigurationList.add(claimsForTokenConfiguration);
OnTokenIssuanceStartReturnClaim claimsForTokenConfiguration1 = new OnTokenIssuanceStartReturnClaim();
claimsForTokenConfiguration1.claimIdInApiResponse = "CustomRoles";
claimsForTokenConfigurationList.add(claimsForTokenConfiguration1);
customAuthenticationExtension.claimsForTokenConfiguration = claimsForTokenConfigurationList;

graphClient.identity().customAuthenticationExtensions("6fc5012e-7665-43d6-9708-4370863f4e6e")
	.buildRequest()
	.patch(customAuthenticationExtension);

```