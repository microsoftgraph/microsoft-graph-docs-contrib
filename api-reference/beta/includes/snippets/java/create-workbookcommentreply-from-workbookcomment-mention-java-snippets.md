---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookCommentReply workbookCommentReply = new WorkbookCommentReply();
workbookCommentReply.setContentType("mention");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("richContent", "<at id=\"0\">Kate Kristensen</at> - Can you take a look?");
LinkedList<Object> mentions = new LinkedList<Object>();
 property = new ();
property.setId(0);
property.setName("Kate Kristensen");
property.setEmail("kakri@contoso.com");
mentions.add(property);
additionalData.put("mentions", mentions);
workbookCommentReply.setAdditionalData(additionalData);
WorkbookCommentReply result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().comments().byWorkbookCommentId("{workbookComment-id}").replies().post(workbookCommentReply);


```