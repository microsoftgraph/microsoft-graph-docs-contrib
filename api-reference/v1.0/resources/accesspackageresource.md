---
title: "accessPackageResource resource type"
description: "An access package resource is a reference to a resource associated with a catalog the roles for which can be used in one or more access packages."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# accessPackageResource resource type

Namespace: microsoft.graph

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package resource is a reference to a resource associated with an access package catalog for which an access package can be configured to provide access. This can be a group, an app, a SharePoint Online site, or an external application represented by [customDataProvidedResource](customdataprovidedresource.md). To request an access package resource, or remove a resource from an access package, create an [accessPackageResourceRequest](accesspackageresourcerequest.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/accesspackagecatalog-list-resources.md) | [accessPackageResource](accesspackageresource.md) collection | Retrieve a list of accessPackageResource objects in a catalog. |
| [Refresh](../api/accesspackageresource-refresh.md)|None|Refresh the resource information from the originSystem.|
| [List uploadSessions](../api/accesspackageresource-list-uploadsessions.md) | [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) collection | Get a list of the upload sessions created on an accessPackageResource. |
| [Create customDataProvidedResourceUploadSession](../api/accesspackageresource-post-uploadsessions.md) | [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) | Create a new upload session on an accessPackageResource. |
| [Delete customDataProvidedResourceUploadSession](../api/accesspackageresource-delete-uploadsessions.md) | None | Delete an upload session from an accessPackageResource. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|attributes|[accessPackageResourceAttribute](accesspackageresourceattribute.md) collection|Contains information about the attributes to be collected from the requestor and sent to the resource application.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|A description for the resource.|
|displayName|String|The display name of the resource, such as the application name, group name or site name.|
|id|String| Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|originId|String|The unique identifier of the resource in the origin system. For a Microsoft Entra group, this is the identifier of the group. |
|originSystem|String|The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication` or `AadGroup`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|environment|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Contains the environment information for the resource. This can be set using either the `@odata.bind` annotation or the environment's *originId*.Supports `$expand`.|
|roles|[accessPackageResourceRole](accesspackageresourcerole.md) collection| Read-only. Nullable. Supports `$expand`.|
|scopes|[accessPackageResourceScope](accesspackageresourcescope.md) collection| Read-only. Nullable. Supports `$expand`.|
|uploadSessions|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) collection|The upload sessions for uploading external access data to this resource through the Bring Your Own Data (BYOD) flow.|

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
   "attributes": [
    {
      "@odata.type": "microsoft.graph.accessPackageResourceAttribute"
    }
   ],
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "modifiedDateTime": "String (timestamp)",
  "originId": "String",
  "originSystem": "String"
}
```
