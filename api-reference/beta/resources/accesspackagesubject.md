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

In [Azure AD entitlement management](entitlementmanagement-overview.md), an access package subject is a user, service principal, or other entity that can be configured to request or be assigned an access package.  It may represent a requestor from a connected organization who is not yet in the tenant.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Update accessPackageSubject](../api/accesspackagesubject-update.md)|None | Update the properties of an **accesspackagesubject** object. |
| [Get accessPackageSubject](../api/accesspackagesubject-get.md)|None | Get the properties of an **accesspackagesubject** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|altSecId|String|Not Supported.|
|connectedOrganizationId|String|The identifier of the connected organization of the subject.|
|displayName|String|The display name of the subject.|
|email|String|The email address of the subject.|
|id|String| Read-only. Key.|
|objectId|String|The object identifier of the subject. `null` if the subject is not yet a user in the tenant. Alternate key.|
|principalName|String|The principal name, if known, of the subject.|
|subjectLifecycle|accessPackageSubjectLifecycle|The lifecycle of the subject user, if a guest. The possible values are: `notDefined`, `notGoverned`, `governed`, `unknownFutureValue`.|
|type|String|The resource type of the subject.|

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
  "@odata.type": "#microsoft.graph.accessPackageSubject",
  "id": "String (identifier)",
  "objectId": "String",
  "altSecId": "String",
  "displayName": "String",
  "principalName": "String",
  "email": "String",
  "onPremisesSecurityIdentifier": "String",
  "type": "String",
  "connectedOrganizationId": "String",
  "subjectLifecycle": "String"
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

