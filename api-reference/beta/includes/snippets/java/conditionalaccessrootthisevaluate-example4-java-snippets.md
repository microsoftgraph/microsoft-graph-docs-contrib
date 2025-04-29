---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identity.conditionalaccess.evaluate.EvaluatePostRequestBody evaluatePostRequestBody = new com.microsoft.graph.beta.identity.conditionalaccess.evaluate.EvaluatePostRequestBody();
evaluatePostRequestBody.setAppliedPoliciesOnly(true);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 signInIdentity = new ();
signInIdentity.setOdataType("#microsoft.graph.servicePrincipalSignIn");
signInIdentity.setServicePrincipalId("c65b94a5-0049-439a-a6fd-bce307077730");
additionalData.put("signInIdentity", signInIdentity);
 signInContext = new ();
signInContext.setOdataType("#microsoft.graph.applicationContext");
LinkedList<String> includeApplications = new LinkedList<String>();
includeApplications.add("00000003-0000-0ff1-ce00-000000000000");
signInContext.setIncludeApplications(includeApplications);
additionalData.put("signInContext", signInContext);
 signInConditions = new ();
signInConditions.setServicePrincipalRiskLevel("high");
signInConditions.setCountry("CA");
signInConditions.setIpAddress("40.77.182.32");
additionalData.put("signInConditions", signInConditions);
evaluatePostRequestBody.setAdditionalData(additionalData);
var result = graphClient.identity().conditionalAccess().evaluate().post(evaluatePostRequestBody);


```