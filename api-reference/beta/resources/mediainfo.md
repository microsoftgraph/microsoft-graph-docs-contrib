---
title: "mediaInfo resource type"
description: "The media information used in actions for prompts."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# mediaInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The media information used in actions for prompts.

## Properties
| Property	     | Type	   | Description                      |
|:---------------|:--------|:---------------------------------|
| resourceId     | String  | Unique identity of the resource. |
| uri            | String  | Path to the resource.            |

## Remarks

### Supported file formats for audio prompts

Currently only Wave file (.wav) format audio prompts are supported.
More specifically, the audio content in the wave file must be mono (single-channel),
16-bit samples with a 16,000 (16KHz) sampling rate.

### Caching of resources

The platform provides optional caching of resources. A bot application which frequently plays the same prompt can indicate the prompt resource should be cached by providing a resourceId string. This will reduce how often the platform downloads the resource and will cache the resource within the runtime service which plays the prompt.

The resourceId should uniquely identify the resource within the scope of the bot application. The bot may use a GUID for the resourceId, a descriptive name such as "Welcome Prompt", or any other useful naming identifier. However, if a resource is subsequently updated (e.g., a prompt is re-recorded), a new resourceId value must be specified, otherwise the platform will continue playing the previously cached resource. The URI of the resource is not considered when looking up a resource within the cache, only the resourceId value is used. The platform partitions the cache by bot application ID, so two bots using the same resourceId values will not conflict. Resources are also partitioned by tenant: this allows the bot to provide tenant-specific prompts while using the same resourceId. (Currently it is not possible to indicate a resource is tenant-agnostic to allow the same prompt to be reused across all tenants.)

Caching is independent of prefetching media: it is not necessary to list a resource in the prefetchMedia collection (in [serviceHostedMediaConfig](servicehostedmediaconfig.md)) in order for a resource to be cacheable. Any resource with a resourceId will be cached. If a prompt does not need to be cached - for instance, because the prompt was dynamically generated and will never be played again - then a resourceId should be omitted.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mediaInfo"
}-->
```json
{
  "resourceId": "String",
  "uri": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mediaInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
