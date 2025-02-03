---
title: "audiencesConfiguration resource type"
description: "Contains settings to block specific signInAudience types."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: ""
doc_type: resourcePageType
---

# audiencesConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings to block specific signInAudience types.

## Properties

| Property                 | Type                                                       | Description                                                                                    |
| :----------------------- | :--------------------------------------------------------- | :--------------------------------------------------------------------------------------------- |
| azureAdMultipleOrgs      | [audienceRestriction](../resources/audiencerestriction.md) | Setting to allow or disallow creation of apps with multi-tenant signIn audience.               |
| personalMicrosoftAccount | [audienceRestriction](../resources/audiencerestriction.md) | Setting to allow or disallow creation of apps with Personal Microsoft Account signIn audience. |

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
