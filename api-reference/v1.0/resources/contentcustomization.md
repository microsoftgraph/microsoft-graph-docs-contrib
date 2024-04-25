---
title: "contentCustomization resource type"
description: "Contains details of the various content options for a tenant."
author: "quievey"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# contentCustomization resource type

Namespace: microsoft.graph

Contains details of the various content options to be customized in the authentication flow for a tenant.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attributeCollection|[keyValue](../resources/keyvalue.md) collection| Represents the content options of External Identities to be customized throughout the authentication flow for a tenant.|
|attributeCollectionRelativeUrl|String| A relative URL for the content options of External Identities to be customized throughout the authentication flow for a tenant.|
|registrationCampaign|[keyValue](../resources/keyvalue.md) collection| Represents the content options to be customized during the Proof Up interrupt for MFA |
|registrationCampaignRelativeUrl|String| A relative URL for the content options to be customized during the Proof Up interrupt for MFA |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.contentCustomization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentCustomization",
  "attributeCollection": [
    {
      "@odata.type": "microsoft.graph.keyValue"
    }
  ],
  "attributeCollectionRelativeUrl": "String",
  "registrationCampaign": [
    {
      "@odata.type": "microsoft.graph.keyValue"
    }
  ],
  "registrationCampaignRelativeUrl": "String"
}
```
