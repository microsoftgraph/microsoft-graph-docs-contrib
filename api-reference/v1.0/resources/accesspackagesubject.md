---
title: "accessPackageSubject resource type"
description: "In Microsoft Entra entitlement management, a subject of an access package assignment."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---
# accessPackageSubject resource type

Namespace: microsoft.graph


In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package subject is a user, service principal, or other entity that can be configured to request or be assigned an access package.  It may represent a requestor from a connected organization who isn't yet in the tenant.

## Methods

None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the subject.|
|email|String|The email address of the subject.|
|id|String|Read-only.|
|objectId|String|The object identifier of the subject. `null` if the subject isn't yet a user in the tenant.|
|onPremisesSecurityIdentifier|String|A string representation of the principal's security identifier, if known, or `null` if the subject doesn't have a security identifier.|
|principalName|String|The principal name, if known, of the subject.|
|subjectType|accessPackageSubjectType|The resource type of the subject. The possible values are: `notSpecified`, `user`, `servicePrincipal`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connectedOrganization|[connectedOrganization](connectedorganization.md)|The connected organization of the subject. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageSubject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageSubject",
  "displayName": "String",
  "email": "String",
  "id": "String (identifier)",
  "objectId": "String",
  "onPremisesSecurityIdentifier": "String",
  "principalName": "String",
  "subjectType": "String"
}
```
