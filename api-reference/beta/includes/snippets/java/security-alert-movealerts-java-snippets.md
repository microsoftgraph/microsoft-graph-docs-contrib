---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.alerts_v2.microsoftgraphsecuritymovealerts.MoveAlertsPostRequestBody moveAlertsPostRequestBody = new com.microsoft.graph.beta.security.alerts_v2.microsoftgraphsecuritymovealerts.MoveAlertsPostRequestBody();
LinkedList<String> alertIds = new LinkedList<String>();
alertIds.add("da637551227677560813_-961444813");
alertIds.add("da637551227677560813_-961444814");
moveAlertsPostRequestBody.setAlertIds(alertIds);
moveAlertsPostRequestBody.setIncidentId("2972395");
moveAlertsPostRequestBody.setAlertComment("Moving alerts for investigation consolidation");
moveAlertsPostRequestBody.setNewCorrelationReasons(EnumSet.of(com.microsoft.graph.beta.models.security.CorrelationReason.SameAsset, com.microsoft.graph.beta.models.security.CorrelationReason.TemporalProximity));
var result = graphClient.security().alertsV2().microsoftGraphSecurityMoveAlerts().post(moveAlertsPostRequestBody);


```