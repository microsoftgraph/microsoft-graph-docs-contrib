---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Contact contact = new Contact();
contact.setParentFolderId("parentFolderId-value");
OffsetDateTime birthday = OffsetDateTime.parse("2016-10-19T10:37:00Z");
contact.setBirthday(birthday);
contact.setFileAs("fileAs-value");
contact.setDisplayName("displayName-value");
contact.setGivenName("givenName-value");
contact.setInitials("initials-value");
Contact result = graphClient.me().contactFolders().byContactFolderId("{contactFolder-id}").contacts().post(contact);


```