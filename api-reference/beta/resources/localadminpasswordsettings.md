---
title: "localAdminPasswordSettings resource type"
description: "Represents the policy scope of an Azure Active Directory tenant that controls the Local Admin Password Solution (LAPS) setting."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---
# localAdminPasswordSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Azure Active Directory (Azure AD) tenant that controls the Local Admin Password Solution (LAPS) setting.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Specifies whether this policy scope is configurable by the admin. The default value is `false`. An admin can set it to true to enable Local Admin Password Solution (LAPS) within their organzation.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.localAdminPasswordSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.localAdminPasswordSettings",
  "isEnabled": "Boolean"
}
```
