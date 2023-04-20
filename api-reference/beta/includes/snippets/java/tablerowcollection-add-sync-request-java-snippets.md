---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "respond-async"));
requestOptions.add(new HeaderOption("Workbook-Session-Id", "{Workbook-Session-Id}"));

WorkbookTableRow workbookTableRow = new WorkbookTableRow();
workbookTableRow.values = JsonParser.parseString("\"[\r\n    [1, 2, 3],\r\n    [4, 5, 6]\r\n  ]\"");

graphClient.me().drive().items("01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ").workbook().tables("Table1").rows()
	.buildRequest( requestOptions )
	.post(workbookTableRow);

```