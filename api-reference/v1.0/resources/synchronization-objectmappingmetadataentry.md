---
title: "objectMappingMetadataEntry resource type"
description: "Metadata for the given object."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "applications"
---

# objectMappingMetadataEntry resource type

Namespace: microsoft.graph

Metadata for the given object.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|key|objectMappingMetadata|Possible values are: `EscrowBehavior`, `DisableMonitoringForChanges`, `OriginalJoiningProperty`, `Disposition`, `IsCustomerDefined`, `ExcludeFromReporting`, `Unsynchronized`. |
|value|String|Value of the metadata property.|

### Supported key-value pairs
| Key       |Value|
|:---------------|:----------|
|EscrowBehavior| Values include `IgnoreLookupReferenceResolutionFailure` for the escrow to be ignored if generated due to failure during lookup reference resolution, and `Default` for the escrow will be treated normally.  |
|DisableMonitoringForChanges | Indicates that changes to a specific attribute are not considered when deciding if there has been a change to an entry in the source.  |
|OriginalJoiningProperty  |The joining property prior to a customer selecting custom joining properties. This is used for resetting.  |
|Disposition |The possible values are `Discard` meaning the resulting synchronization entry was discarded, `Normal` meaning the resulting synchronization entry was processed normally, and `Escrow` meaning the resulting synchronization entry was escrowed.  |
|IsCustomerDefined |Indicates whether the customer defined this objectMapping.  |
|ExcludeFromReporting  |When counting synchronized objects for statistics purposes, exclude this mapping. |
|Unsynchronized |This flag indicates whether a type or attribute is excluded from synchronization but is still necessary for some synchronization logic to work. For example, the type "AppRoleAssignment" is unsynchronized for the Box enterprise application but is still required for the app role assignments logic.  |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.objectMappingMetadataEntry"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.objectMappingMetadataEntry",
  "key": "String",
  "value": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "metadataEntry resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


