---
title: "customDataProvidedResource resource type"
description: "An access package catalog resource that represents an external application."
author: "pratima-cloudknox"
ms.date: 10/29/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A customDataProvidedResource is a type of [accessPackageResource](../resources/accesspackageresource.md) that represents an external application. The originSystem of a customDataProvidedResource is always `CustomDataProvidedResource`.


Inherits from [accessPackageResource](../resources/accesspackageresource.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create customDataProvidedResourceUploadSession](../api/customdataprovidedresourceuploadsession-post.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Create a new customDataProvidedResourceUploadSession object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attributes|[accessPackageResourceAttribute](../resources/accesspackageresourceattribute.md) collection| Contains information about the attributes to be collected from the requestor and sent to the resource application. |
|addedBy|String|The name of the user or application that first added this resource. Read-only.|
|addedOn|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|description|String|A description for the resource.|
|displayName|String|The display name of the resource, such as the application name, group name, or site name.|
|id|String| Read-only.|
|isPendingOnboarding|Boolean|`True` if the resource is not yet available for assignment. Read-only. |
|originId|String|The unique identifier of the resource in the origin system. In the case of a Microsoft Entra group, originId is the identifier of the group. Supports `$filter` (`eq`).|
|originSystem|String|The type of the resource in the origin system. For a customDataProvidedResource this is always "CustomDataProvidedResource". Supports `$filter` (`eq`).|
|resourceType|String|The type of the resource.|
|url|String|A unique resource locator for the resource, such as the URL for signing a user into an application.|


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
  "displayName": "String",
  "description": "String",
  "url": "String",
  "resourceType": "String",
  "originId": "String",
  "originSystem": "String",
  "isPendingOnboarding": "Boolean",
  "addedBy": "String",
  "addedOn": "String (timestamp)",
  "attributes": [
    {
      "@odata.type": "microsoft.graph.accessPackageResourceAttribute"
    }
  ],
  "notificationEndpointConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
  }
}
```

