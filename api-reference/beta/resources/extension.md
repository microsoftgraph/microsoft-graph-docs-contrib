---
title: "extension resource type"
description: "An abstract type to support the OData v4 open type openTypeExtension."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "dkershaw10"
ms.date: 03/21/2024
---

# extension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents open extension, an extensibility option that provides an easy way to directly add untyped properties to a resource in Microsoft Graph.

Any open extension added to a resource shows up in the extensions navigation property. Each extension has an extensionName property which is the only pre-defined, writable property for all extensions, along with your custom data.

An abstract type to support the OData v4 open type [openTypeExtension](opentypeextension.md).

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/driveitem-post-extensions.md)|[extension](../resources/extension.md)| Create an open extension using an extensionName.|
|[Get](../api/extension-get.md)|[extension](../resources/extension.md)| Get an open extension identified by id.|
|[Update](../api/extension-update.md)|[extension](../resources/extension.md)|Update an open extension identified by id.|
|[Delete](../api/driveitem-delete-extensions.md)|None| Delete an open extension identified by id.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| extensionName | string | A unique text identifier for an open type data extension.
| id            | string | A fully qualified identifier that concatenates the extension type with the extensionName. Read-only.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.extension",
  "openType": false
}
-->
``` json
{
    "extensionName": "string",
    "id": "string"
}
```