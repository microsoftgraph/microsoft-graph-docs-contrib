---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Alert alert = new Alert();
alert.assignedTo = "secAdmin@contoso.onmicrosoft.com";
alert.classification = AlertClassification.TRUE_POSITIVE;
alert.determination = AlertDetermination.MALWARE;
alert.status = AlertStatus.IN_PROGRESS;

graphClient.security().alerts_v2("da637551227677560813_-961444813")
	.buildRequest()
	.patch(alert);

```