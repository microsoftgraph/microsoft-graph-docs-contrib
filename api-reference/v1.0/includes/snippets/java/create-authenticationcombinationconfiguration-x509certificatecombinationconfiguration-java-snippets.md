---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

X509CertificateCombinationConfiguration authenticationCombinationConfiguration = new X509CertificateCombinationConfiguration();
authenticationCombinationConfiguration.setOdataType("#microsoft.graph.x509CertificateCombinationConfiguration");
LinkedList<String> allowedIssuerSkis = new LinkedList<String>();
allowedIssuerSkis.add("9A4248C6AC8C2931AB2A86537818E92E7B6C97B6");
authenticationCombinationConfiguration.setAllowedIssuerSkis(allowedIssuerSkis);
LinkedList<String> allowedPolicyOIDs = new LinkedList<String>();
authenticationCombinationConfiguration.setAllowedPolicyOIDs(allowedPolicyOIDs);
LinkedList<AuthenticationMethodModes> appliesToCombinations = new LinkedList<AuthenticationMethodModes>();
appliesToCombinations.add(AuthenticationMethodModes.X509CertificateSingleFactor);
authenticationCombinationConfiguration.setAppliesToCombinations(appliesToCombinations);
AuthenticationCombinationConfiguration result = graphClient.identity().conditionalAccess().authenticationStrength().policies().byAuthenticationStrengthPolicyId("{authenticationStrengthPolicy-id}").combinationConfigurations().post(authenticationCombinationConfiguration);


```