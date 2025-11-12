---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookComment workbookComment = new WorkbookComment();
workbookComment.setContentType("mention");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("cellAddress", "Sheet1!A1");
additionalData.put("richContent", "<at id=\"0\">Kate Kristensen</at> - This is my comment.");
LinkedList<Object> mentions = new LinkedList<Object>();
 property = new ();
property.setId(0);
property.setName("Kate Kristensen");
property.setEmail("kakri@contoso.com");
mentions.add(property);
additionalData.put("mentions", mentions);
workbookComment.setAdditionalData(additionalData);
WorkbookComment result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().comments().post(workbookComment);


```