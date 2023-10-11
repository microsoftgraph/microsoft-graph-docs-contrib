---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostSslCertificate hostSslCertificate = graphClient.security().threatIntelligence().hostSslCertificates("Y29udG9zby5jb20xNTUwMGZiOTY1NTE1MDVmMWVkYjI0ZGQzYjM2ZmNmZmRiNzY1ODMzYjgxMTg=")
	.buildRequest()
	.get();

```