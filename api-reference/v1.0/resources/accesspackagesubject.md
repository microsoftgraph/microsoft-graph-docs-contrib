---
title: "accessPackageSubject resource type"
description: "In Azure AD entitlement management, a subject of an access package assignment."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackageSubject resource type

Namespace: microsoft.graph


In [Azure AD entitlement management](entitlementmanagement-overview.md), an access package subject is a user, service principal, or other entity that can be configured to request or be assigned an access package.  It may represent a requestor from a connected organization who is not yet in the tenant.

## Methods

None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the subject.|
|email|String|The email address of the subject.|
|id|String|Read-only.|
|objectId|String|The object identifier of the subject. `null` if the subject is not yet a user in the tenant.|
|onPremisesSecurityIdentifier|String|A string representation of the principal's security identifier, if known, or `null` if the subject does not have a security identifier.|
|principalName|String|The principal name, if known, of the subject.|
|subjectType|accessPackageSubjectType|The resource type of the subject. The possible values are: `notSpecified`, `user`, `servicePrincipal`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connectedOrganization|[connectedOrganization](connectedorganization.md)|The connected organization of the subject. Read-only. Nullable.|

## JSON representation
The following is a JSON representation of the resource.
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

