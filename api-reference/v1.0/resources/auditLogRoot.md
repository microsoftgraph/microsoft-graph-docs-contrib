---
title: "auditLogRoot resource type"
description: "The `/auditLogs` resource is a container for different types of audit logs."
author: "dhanyahk"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# auditLogRoot resource type

The auditLogs resource is a container for different types of audit logs. It returns a singleton auditLog resource. It doesn't contain any usable properties.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List directoryAudits](../api/directoryaudit-list.md) | [directoryAudit](directoryaudit.md) |List the directory audit items in the collection and their properties.|
|[Get directoryAudit](../api/directoryaudit-get.md) | [directoryAudit](directoryaudit.md) |Get a specific directory audit item and its properties.|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read properties and relationships of signIn object.|

## Properties

None.

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|directoryAudits|[directoryAudit](directoryAudit.md) collection| Read-only. Nullable.|
|signIns|[signIn](signIn.md) collection| Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.auditLogRoot"
}-->

```json
{
}
```

## Example

<!-- {
  "blockType": "request",
  "name": "get_auditLogs"
}-->
```http
GET https://graph.microsoft.com/v1.0/auditLogs
```

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.auditLogRoot"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "auditLogRoot resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->