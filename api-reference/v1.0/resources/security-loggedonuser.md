---
title: "loggedOnUser resource type"
description: "User that was loggen on the machine during the time of the alert."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# loggedOnUser resource type

Namespace: microsoft.graph.security

User that was loggen on the machine during the time of the alert.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountName|String|User account name of the logged-on user.|
|domainName|String|User account domain of the logged-on user.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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