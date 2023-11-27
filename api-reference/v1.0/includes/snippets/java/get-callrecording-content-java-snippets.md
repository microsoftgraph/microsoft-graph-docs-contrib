---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.customRequest("/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/7e31db25-bc6e-4fd8-96c7-e01264e9b6fc/content", InputStream.class)
	.buildRequest()
	.get();

```