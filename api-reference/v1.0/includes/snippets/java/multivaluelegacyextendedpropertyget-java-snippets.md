---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Event event = graphClient.me().events("AAMkADI0NzVmYjQ0LWQyZTItNDIxYS1iMWE2LTIyZGJiOGM0N2YzMQBGAAAAAABaZwRaNsIxTp0lpjY1il_IBwAXjnwa91gDSKOqCnaDInDMAAAAAAENAAAXjnwa91gDSKOqCnaDInDMAAAtgOgIAAA=")
	.buildRequest()
	.expand("multiValueExtendedProperties($filter=id eq 'StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation')")
	.get();

```