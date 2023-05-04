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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for the given object.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|String|Possible values are: `EscrowBehavior`, `DisableMonitoringForChanges`, `OriginalJoiningProperty`, `Disposition`, `IsCustomerDefined`, `ExcludeFromReporting`, `Unsynchronized`. |
|value|String|Value of the metadata property.|

### Supported key value pairs
| Key	   |Value|
|:---------------|:----------|
|EscrowBehavior|An EscrowBehavior enum. Example value: "IgnoreLookupReferenceResolutionFailure” - The escrow will be ignored if generated due to failure during lookup reference resolution. "Default" - The escrow will be treated normally.  |
|DisableMonitoringForChanges | This flag indicates changes to that attribute are not considered when deciding if there has been a change to an entry in the source.  |
|OriginalJoiningProperty  |The joining property prior to a customer selecting custom joining properties. This is used for reset.  |
|Disposition |A SynchronizationDisposition enum. Discard – The resulting synchronization entry was discarded. Normal – The resulting synchronization entry was processed normally. Escrow – the resulting synchronization entry was escrowed.  |
|IsCustomerDefined |This flag indicates whether this objectMapping was defined by the customer.  |
|ExcludeFromReporting  |When counting synchronized objects for statistics purposes, exclude this mapping. |
|Unsynchronized |This flag indicates whether a type or attribute that is excluded from synchronization but is still necessary for some synchronization logic to work. For example, the type "AppRoleAssignment" is unsynchronized for the Box enterprise application, but still required in order to reason over app role assignments.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.metadataEntry"
}-->

```json
{
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


