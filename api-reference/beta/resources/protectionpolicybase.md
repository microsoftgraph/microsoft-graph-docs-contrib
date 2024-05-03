---
title: "Protection Policy"
description: "Describes protection policy and its properties"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: backup-and-restore
author: "tkanaujia, maniksingh"
---

# process resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Protection Policy represents the plan defined by the Global Admin(or SharePoint Online Admin for SharePoint Online/OneDrive & Exchange Online Admin for Exchange Online) for protecting the M365 data of an organization. It will contain details of what data to protect, when to protect it and for what time period to retain the protected data for a single M365 service.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|displayName|String|Name of the policy being created.|
|status|ProtectionPolicyStatus|Status of the policy. It is an aggregated status of protection units.|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|IdentitySet|The identity of person who created the policy.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this policy.|
|lastModifiedBy|IdentitySet|Identity of the person who last modified this policy.|
|retentionSettings|RetentionSetting Collection|Complex type containing details of all the retention settings for the policy.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.protectionpolicybase"
}-->

```json
{
  "displayName": "string",
  "status": "string",
  "createdDateTime": "dateTimeOffset",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "dateTimeOffset",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "retentionSettings": [{"@odata.type": "microsoft.graph.retentionSetting"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "process resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


