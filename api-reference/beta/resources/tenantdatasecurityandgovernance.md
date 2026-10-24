---
title: "tenantDataSecurityAndGovernance resource type"
description: "Represents the entry point for data security and governance features applicable across the entire tenant."
author: "kylemar"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# tenantDataSecurityAndGovernance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point for data security and governance features applicable across the entire tenant.

Inherits from [dataSecurityAndGovernance](../resources/datasecurityandgovernance.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Process content](../api/tenantdatasecurityandgovernance-processcontent.md)|[processContentResponse](processcontentresponse.md)|Process content from an agent interaction against tenant data protection policies.|
|[Process content async](../api/tenantdatasecurityandgovernance-processcontentasync.md)|[processContentResponses](processcontentresponses.md) collection|Process a batch of content entries asynchronously against data protection policies.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique ID of the data security and governance stream. Inherited from [dataSecurityAndGovernance](../resources/datasecurityandgovernance.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|protectionScopes|[tenantProtectionScopeContainer](tenantprotectionscopecontainer.md)|The container for actions related to computing tenant-wide data protection scopes.|


## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantDataSecurityAndGovernance",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantDataSecurityAndGovernance",
  "id": "String (identifier)"
}
```
