---
title: "accessPackageResource resource type"
description: "Represents a reference to a resource associated with a catalog the roles for which can be used in one or more access packages."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# accessPackageResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra Entitlement Management](entitlementmanagement-overview.md), an access package resource is a reference to a resource associated with an access package catalog. The roles for the access package resource can be used in one or more access packages.  To request to associate a resource with an access package catalog, or remove a resource from a catalog, create an [accessPackageResourceRequest](accesspackageresourcerequest.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/accesspackagecatalog-list-accesspackageresources.md) | [accessPackageResource](accesspackageresource.md) collection | Retrieve a list of accessPackageResource objects in a catalog. |
| [Refresh](../api/accesspackageresource-refresh.md)|None|Refresh the resource information from the originSystem.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|attributes|[accessPackageResourceAttribute](../resources/accesspackageresourceattribute.md) collection| Contains information about the attributes to be collected from the requestor and sent to the resource application. |
|addedBy|String|The name of the user or application that first added this resource. Read-only.|
|addedOn|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|description|String|A description for the resource.|
|displayName|String|The display name of the resource, such as the application name, group name, or site name.|
|id|String| Read-only.|
|isPendingOnboarding|Boolean|`True` if the resource is not yet available for assignment. Read-only. |
|originId|String|The unique identifier of the resource in the origin system. In the case of a Microsoft Entra group, originId is the identifier of the group. Supports `$filter` (`eq`).|
|originSystem|String|The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication`, or `AadGroup`. Supports `$filter` (`eq`).|
|resourceType|String|The type of the resource, such as `Application` if it is a Microsoft Entra connected application, or `SharePoint Online Site` for a SharePoint Online site.|
|url|String|A unique resource locator for the resource, such as the URL for signing a user into an application.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageResourceEnvironment|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Contains the environment information for the resource. This environment can be set using either the `@odata.bind` annotation or the environment's *originId*. Supports `$expand`.|
|accessPackageResourceRoles|[accessPackageResourceRole](accesspackageresourcerole.md) collection| Read-only. Nullable. Supports `$expand`.|
|accessPackageResourceScopes|[accessPackageResourceScope](accesspackageresourcescope.md) collection| Read-only. Nullable. Supports `$expand`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageResource",
  "keyProperty": "id"
}-->

```json
{
  "addedBy": "String",
  "addedOn": "String (timestamp)",
  "attributes": [
    {
      "@odata.type": "microsoft.graph.accessPackageResourceAttribute"
    }
   ],
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isPendingOnboarding": true,
  "originId": "String",
  "originSystem": "String",
  "resourceType": "String",
  "url": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
