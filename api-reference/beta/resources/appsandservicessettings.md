---
title: "appsAndServicesSettings resource type"
description: "Company-wide settings for apps and services"
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# appsAndServicesSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Company-wide settings for apps and services.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isAppAndServicesTrialEnabled|Boolean|Controls whether users can start trial subscriptions for apps and services in your organization.|
|isOfficeStoreEnabled|Boolean|Controls whether users can access the Microsoft Store.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appsAndServicesSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appsAndServicesSettings",
  "isOfficeStoreEnabled": "Boolean",
  "isAppAndServicesTrialEnabled": "Boolean"
}
```

