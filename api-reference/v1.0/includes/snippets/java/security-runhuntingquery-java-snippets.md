---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String query = "DeviceProcessEvents | where InitiatingProcessFileName =~ "powershell.exe" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2";

graphClient.security()
	.runHuntingQuery(SecurityRunHuntingQueryParameterSet
		.newBuilder()
		.withQuery(query)
		.build())
	.buildRequest()
	.post();

```