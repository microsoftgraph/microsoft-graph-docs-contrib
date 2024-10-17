---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomClaimsPolicy customClaimsPolicy = new CustomClaimsPolicy();
customClaimsPolicy.setOdataType("#microsoft.graph.customClaimsPolicy");
customClaimsPolicy.setIncludeBasicClaimSet(boolean);
customClaimsPolicy.setIncludeApplicationIdInIssuer(boolean);
customClaimsPolicy.setAudienceOverride("String");
LinkedList<CustomClaimBase> claims = new LinkedList<CustomClaimBase>();
CustomClaim customClaimBase = new CustomClaim();
customClaimBase.setOdataType("microsoft.graph.customClaim");
claims.add(customClaimBase);
customClaimsPolicy.setClaims(claims);
CustomClaimsPolicy result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").claimsPolicy().put(customClaimsPolicy);


```