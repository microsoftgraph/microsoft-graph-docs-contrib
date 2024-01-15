---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer {Token}"));

byte[] synchronizationSchema = Base64.getDecoder().decode("{    "directories": [..],    "synchronizationRules": [..]}");
	graphClient.servicePrincipals("{servicePrincipalId}").synchronization().jobs("{jobId}").schema()
	.buildRequest( requestOptions )
	.put(synchronizationSchema);

```