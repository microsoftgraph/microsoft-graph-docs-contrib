---
title: "onAttributeCollectionProfileUpdate resource type"
description: "Represents the configuration for collecting additional user profile attributes during sign-in."
author: "Gyanendersinghgithub"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/08/2026
---

# onAttributeCollectionProfileUpdate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration for incrementally collecting additional user profile attributes during sign-in in a Microsoft Entra External ID external tenant. Use this resource to reduce the information requested during sign-up and collect profile information later, when configured conditions are met. The configuration defines the attributes to collect, the rules that determine when to collect them, and the pages that present them to the user.

Inherits from [onAttributeCollectionHandler](../resources/onattributecollectionhandler.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attributeCollectionRules|[attributeCollectionRule](../resources/attributecollectionrule.md) collection|Required. The rules that determine which attributes to collect and when to collect them. Rules are evaluated independently.|
|attributes|[attributeConfiguration](../resources/attributeconfiguration.md) collection|Required. The self-contained catalog of attributes that the flow can collect. Rules and page views reference attributes in this collection by ID.|
|pageViews|[pageView](../resources/pageview.md) collection|Required. The ordered pages used to present attributes to the user. An empty collection presents the attributes on a single default page.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAttributeCollectionProfileUpdate",
  "baseType": "microsoft.graph.onAttributeCollectionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionProfileUpdate",
  "attributes": [
    {
      "@odata.type": "microsoft.graph.attributeConfiguration"
    }
  ],
  "attributeCollectionRules": [
    {
      "@odata.type": "microsoft.graph.attributeCollectionRule"
    }
  ],
  "pageViews": [
    {
      "@odata.type": "microsoft.graph.pageView"
    }
  ]
}
```
