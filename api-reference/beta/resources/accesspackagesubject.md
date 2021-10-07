---
title: "accessPackageSubject resource type"
description: "In Azure AD entitlement management, a subject of an access package assignment."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageSubject resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-root.md), an access package subject is a user, service principal, or other entity that can be configured to request or be assigned an access package.  It may represent a requestor from a connected organization who is not yet in the tenant.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|The display name of the subject.|
|email|String|The email address of the subject.|
|id|String| Read-only.|
|objectId|String|The object identifier of the subject. `null` if the subject is not yet a user in the tenant.|
|principalName|String|The principal name, if known, of the subject.|
|type|String|The resource type of the subject.|
|connectedOrganizationId|String|The identifier of the connected organization of the subject.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|connectedOrganization|[connectedOrganization](connectedorganization.md)| The connected organization of the subject. Read-only. Nullable.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageSubject",
  "keyProperty": "id"
}-->

```json
{
  "displayName": "Administrator",
  "email": "admin@contoso.com",
  "id": "ab4291f6-66b7-42bf-b597-a05b29414f5c",
  "objectId": "cc754ed5-f598-45c0-aaf0-fc2f2eb1838f",
  "principalName": "admin@domain.contoso.com",
  "type": "User"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageSubject resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

