---
title: "audiencesConfiguration resource type"
description: "Contains settings to block specific signInAudience types."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: ""
doc_type: resourcePageType
ms.date: 02/04/2025
---

# audiencesConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings to block specific **signInAudience** types in an [application management policy](../resources/applicationauthenticationmethodpolicy.md). Only restrictions for `azureAdMultipleOrgs` and `personalMicrosoftAccount` **signInAudience** types are available.

## Properties

| Property                 | Type                                                       | Description                                                                                       |
| :----------------------- | :--------------------------------------------------------- | :------------------------------------------------------------------------------------------------ |
| azureAdMultipleOrgs      | [audienceRestriction](../resources/audiencerestriction.md) | Setting to allow or disallow creation of apps with multitenant **signInAudience**.                |
| personalMicrosoftAccount | [audienceRestriction](../resources/audiencerestriction.md) | Setting to allow or disallow creation of apps with personal Microsoft account **signInAudience**. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.audiencesConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.audiencesConfiguration",
  "azureAdMultipleOrgs": {
    "@odata.type": "microsoft.graph.audienceRestriction"
  },
  "personalMicrosoftAccount": {
    "@odata.type": "microsoft.graph.audienceRestriction"
  }
}
```
