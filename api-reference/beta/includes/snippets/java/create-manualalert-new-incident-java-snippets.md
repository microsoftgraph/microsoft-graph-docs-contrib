---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.Alert alert = new com.microsoft.graph.beta.models.security.Alert();
alert.setOdataType("#microsoft.graph.security.manualAlert");
alert.setTitle("Suspicious login from TOR exit node");
alert.setDescription("User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.");
alert.setCategory("InitialAccess");
alert.setSeverity(com.microsoft.graph.beta.models.security.AlertSeverity.High);
alert.setRecommendedActions("Reset user credentials, enable MFA, review recent user activity");
LinkedList<String> mitreTechniques = new LinkedList<String>();
mitreTechniques.add("T1078");
alert.setMitreTechniques(mitreTechniques);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> entityDefinitions = new LinkedList<Object>();
 property1 = new ();
property1.setEntityType("user");
property1.setEntityIdentifier("userPrincipalName");
property1.setIdentifierValue("john.doe@contoso.com");
property1.setRole("impacted");
entityDefinitions.add(property1);
 property2 = new ();
property2.setEntityType("ip");
property2.setEntityIdentifier("address");
property2.setIdentifierValue("185.220.101.50");
property2.setRole("related");
entityDefinitions.add(property2);
additionalData.put("entityDefinitions", entityDefinitions);
alert.setAdditionalData(additionalData);
com.microsoft.graph.models.security.Alert result = graphClient.security().alertsV2().post(alert);


```