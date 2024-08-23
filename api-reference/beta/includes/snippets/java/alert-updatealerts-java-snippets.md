---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.alerts.updatealerts.UpdateAlertsPostRequestBody updateAlertsPostRequestBody = new com.microsoft.graph.beta.security.alerts.updatealerts.UpdateAlertsPostRequestBody();
LinkedList<Alert> value = new LinkedList<Alert>();
Alert alert = new Alert();
alert.setAssignedTo("String");
OffsetDateTime closedDateTime = OffsetDateTime.parse("String (timestamp)");
alert.setClosedDateTime(closedDateTime);
LinkedList<String> comments = new LinkedList<String>();
comments.add("String");
alert.setComments(comments);
AlertFeedback feedback = new AlertFeedback();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.type", "microsoft.graph.alertFeedback");
feedback.setAdditionalData(additionalData);
alert.setFeedback(feedback);
alert.setId("String (identifier)");
AlertStatus status = new AlertStatus();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("@odata.type", "microsoft.graph.alertStatus");
status.setAdditionalData(additionalData1);
alert.setStatus(status);
LinkedList<String> tags = new LinkedList<String>();
tags.add("String");
alert.setTags(tags);
SecurityVendorInformation vendorInformation = new SecurityVendorInformation();
vendorInformation.setProvider("String");
vendorInformation.setVendor("String");
alert.setVendorInformation(vendorInformation);
value.add(alert);
updateAlertsPostRequestBody.setValue(value);
var result = graphClient.security().alerts().updateAlerts().post(updateAlertsPostRequestBody);


```