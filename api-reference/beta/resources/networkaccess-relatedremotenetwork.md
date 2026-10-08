---
title: "relatedRemoteNetwork resource type"
description: "Represents a remote network involved in a Global Secure Access alert."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# relatedRemoteNetwork resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a remote network involved in a Global Secure Access [alert](../resources/networkaccess-alert.md).

Inherits from [microsoft.graph.networkaccess.relatedResource](../resources/networkaccess-relatedresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|remoteNetworkId|String|Unique identifier of the remote network. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.relatedRemoteNetwork"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.relatedRemoteNetwork",
  "remoteNetworkId": "String"
}
```
