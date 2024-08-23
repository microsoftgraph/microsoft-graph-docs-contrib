---
title: "loggedOnUser resource type"
description: "User that was logged in on the machine during the time of the alert."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# loggedOnUser resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

User that was logged in on the machine during the time of the alert.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountName|String|User account name of the logged-on user.|
|domainName|String|User account domain of the logged-on user.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.loggedOnUser"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.loggedOnUser",
  "accountName": "String",
  "domainName": "String"
}
```