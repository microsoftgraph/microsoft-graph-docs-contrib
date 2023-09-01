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

Metadata for the given object.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|key|synchronizationMetadata|Possible values are: `GalleryApplicationIdentifier`, `GalleryApplicationKey`, `IsOAuthEnabled`, `IsSynchronizationAgentAssignmentRequired`, `IsSynchronizationAgentRequired`, `IsSynchronizationInPreview`, `OAuthSettings`, `SynchronizationLearnMoreIbizaFwLink`, `ConfigurationFields`. |
|value|String|Value of the metadata property.|

### Supported key-value pairs
| Key       |Value|
|:---------------|:----------|
|GalleryApplicationIdentifier|The GUID that represents this enterprise application in Azure AD.   |
|GalleryApplicationKey | The name that represents this enterprise application in Azure AD (same value as the factoryTag attribute within the synchronizationTemplate resource type).   |
|IsOAuthEnabled  |Indicates whether OAuth is enabled for this synchronization job's application.  |
|IsSynchronizationAgentAssignmentRequired |Indicates whether to display certain UI elements applicable only during synchronization that requires an on-premises agent.  |
|IsSynchronizationAgentRequired |Indicates whether an on-premises synchronization agent is required for this synchronization job. |
|IsSynchronizationInPreview  |Indicates whether provisioning for this enterprise application is generally available.  |
|OAuthSettings |A JSON containing values necessary for OAuth authentication, such as the token exchange URI and client identifier.  |
|SynchronizationLearnMoreIbizaFwLink |The documentation link that's displayed in the Azure portal.  |
|ConfigurationFields |A JSON containing the textbox configuration names that are displayed in the Azure portal. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.synchronizationMetadataEntry"
}
-->
``` json
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


