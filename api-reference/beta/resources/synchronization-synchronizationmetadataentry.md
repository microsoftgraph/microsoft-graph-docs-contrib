---
title: "synchronizationMetadataEntry resource type"
description: "Metadata for the given object."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "applications"
---

# synchronizationMetadataEntry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for the given object.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|String|Possible values are: `GalleryApplicationIdentifier`, `GalleryApplicationKey`, `IsOAuthEnabled`, `IsSynchronizationAgentAssignmentRequired`, `IsSynchronizationAgentRequired`, `IsSynchronizationInPreview`, `OAuthSettings`, `SynchronizationLearnMoreIbizaFwLink`, `ConfigurationFields`. |
|value|String|Value of the metadata property.|

### Supported key value pairs
| Key	   |Value|
|:---------------|:----------|
|GalleryApplicationIdentifier|The GUID that represents this enterprise application in Azure.   |
|GalleryApplicationKey | The name that represents this enterprise application in Azure (same value as the factoryTag attribute within the synchronizationTemplate resource type).   |
|IsOAuthEnabled  |This flag indicates whether OAuth is enabled for this synchronization job's application.  |
|IsSynchronizationAgentAssignmentRequired |This flag indicates whether to display certain UI elements applicable only during synchronization that requires an on-premises agent.  |
|IsSynchronizationAgentRequired |This flag indicates whether an on-premises synchronization agent is required for this synchronization job. |
|IsSynchronizationInPreview  |This flag indicates whether provisioning for this enterprise application is in GA or not.  |
|OAuthSettings |A JSON containing values necessary for OAuth authentication, such as the Token Exchange URI and Client Identifier.  |
|SynchronizationLearnMoreIbizaFwLink |The documentation link to be displayed in Azure Portal.  |
|ConfigurationFields |A JSON containing the textbox configuration names displayed in Azure Portal. |

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
  "@odata.type": "#microsoft.graph.synchronizationMetadataEntry",
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


