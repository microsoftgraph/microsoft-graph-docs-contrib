---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

List list = new List();
list.setDisplayName("Books");
LinkedList<ColumnDefinition> columns = new LinkedList<ColumnDefinition>();
ColumnDefinition columnDefinition = new ColumnDefinition();
columnDefinition.setName("Author");
TextColumn text = new TextColumn();
columnDefinition.setText(text);
columns.add(columnDefinition);
ColumnDefinition columnDefinition1 = new ColumnDefinition();
columnDefinition1.setName("PageCount");
NumberColumn number = new NumberColumn();
columnDefinition1.setNumber(number);
columns.add(columnDefinition1);
list.setColumns(columns);
ListInfo list1 = new ListInfo();
list1.setTemplate("genericList");
list.setList(list1);
List result = graphClient.sites().bySiteId("{site-id}").lists().post(list);


```