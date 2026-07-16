---
title: "customDataProvidedResource resource type"
description: "Represents an external application whose access data is provided through the Bring Your Own Data (BYOD) flow for access reviews."
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResource resource type

Namespace: microsoft.graph

Represents an external application whose access data is provided through the Bring Your Own Data (BYOD) flow for catalog user access reviews. The **originSystem** of a customDataProvidedResource is always `CustomDataProvidedResource`.

Inherits from [accessPackageResource](../resources/accesspackageresource.md).

For more information, see [Include custom data provided resource in the catalog for catalog user Access Reviews](/entra/id-governance/custom-data-resource-access-reviews).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List uploadSessions](../api/accesspackageresource-list-uploadsessions.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) collection|Get a list of the upload sessions created on a customDataProvidedResource.|
|[Create customDataProvidedResourceUploadSession](../api/accesspackageresource-post-uploadsessions.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Create a new upload session on a customDataProvidedResource.|
|[Delete customDataProvidedResourceUploadSession](../api/accesspackageresource-delete-uploadsessions.md)|None|Delete an upload session from a customDataProvidedResource.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attributes|[accessPackageResourceAttribute](../resources/accesspackageresourceattribute.md) collection|Contains information about the attributes to be collected from the requestor and sent to the resource application. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|description|String|A description for the resource. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|displayName|String|The display name of the resource, such as the application name, group name, or site name. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|id|String|Read-only. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|notificationEndpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The endpoint configuration of the logic app that is triggered when the access review for this resource goes into an initializing state.|
|originId|String|The unique identifier of the resource in the origin system. For a Microsoft Entra group, this is the identifier of the group. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|originSystem|String|The type of the resource in the origin system. For a customDataProvidedResource, the value is always `CustomDataProvidedResource`. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|environment|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Contains the environment information for the resource. This can be set using either the `@odata.bind` annotation or the environment's *originId*. Supports `$expand`. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|roles|[accessPackageResourceRole](../resources/accesspackageresourcerole.md) collection|Read-only. Nullable. Supports `$expand`. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|scopes|[accessPackageResourceScope](../resources/accesspackageresourcescope.md) collection|Read-only. Nullable. Supports `$expand`. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|
|uploadSessions|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) collection|The upload sessions for uploading external access data to this resource through the Bring Your Own Data (BYOD) flow. Inherited from [accessPackageResource](../resources/accesspackageresource.md).|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customDataProvidedResource",
  "baseType": "microsoft.graph.accessPackageResource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResource",
  "id": "String (identifier)",
  "attributes": [
    {
      "@odata.type": "microsoft.graph.accessPackageResourceAttribute"
    }
  ],
  "displayName": "String",
  "description": "String",
  "originId": "String",
  "originSystem": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "notificationEndpointConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
  }
}
```
