---
title: "cloudVideoInteropInfo resource type"
description: "Represents the online meeting details for conferencing device integration and Cloud Video Interop (CVI)."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 06/19/2026
---

# cloudVideoInteropInfo resource type

Namespace: microsoft.graph

Represents the online meeting details for conferencing device integration and [Cloud Video Interop (CVI)](/microsoftteams/cloud-video-interop).

## Properties

| Property            | Type      | Description                                   |
|:--------------------|:----------|:----------------------------------------------|
| moreInfoWebUrl        | String   | Provides other video teleconferencing (VTC) dial-in options. Read-only. |
| tenantKey             | String   | The tenant key that is used to dial into the interactive voice response (IVR) of the partner CVI service. |
| videoTeleconferenceId | String   | The video teleconferencing ID. Read-only. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudVideoInteropInfo"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudVideoInteropInfo",
  "moreInfoWebUrl": "String",
  "tenantKey": "String",
  "videoTeleconferenceId": "String"
}
```
