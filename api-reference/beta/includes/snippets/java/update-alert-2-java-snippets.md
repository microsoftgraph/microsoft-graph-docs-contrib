---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Alert alert = new Alert();
alert.setAssignedTo("String");
OffsetDateTime closedDateTime = OffsetDateTime.parse("String (timestamp)");
alert.setClosedDateTime(closedDateTime);
LinkedList<String> comments = new LinkedList<String>();
comments.add("String");
alert.setComments(comments);
alert.setFeedback(AlertFeedback.Unknown);
alert.setStatus(AlertStatus.Unknown);
LinkedList<String> tags = new LinkedList<String>();
tags.add("String");
alert.setTags(tags);
SecurityVendorInformation vendorInformation = new SecurityVendorInformation();
vendorInformation.setProvider("String");
vendorInformation.setVendor("String");
alert.setVendorInformation(vendorInformation);
Alert result = graphClient.security().alerts().byAlertId("{alert-id}").patch(alert, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
});


```