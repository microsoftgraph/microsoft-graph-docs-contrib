---
title: "configurationTemplate resource type"
description: "Represents a reusable, versioned configuration baseline for Tenant Configuration Management."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: resourcePageType
---

# configurationTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reusable, versioned configuration baseline for Tenant Configuration Management.

A template can contain up to three versions. Monitors reference a specific version; creating a new version doesn't automatically update existing monitors.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationtemplates.md)|[configurationTemplate](../resources/configurationtemplate.md) collection|List configuration templates.|
|[Create](../api/configurationmanagement-post-configurationtemplates.md)|[configurationTemplate](../resources/configurationtemplate.md)|Create a template with an initial version.|
|[Get](../api/configurationtemplate-get.md)|[configurationTemplate](../resources/configurationtemplate.md)|Get a template.|
|[Update](../api/configurationtemplate-update.md)|None|Update the display name of a template.|
|[Delete](../api/configurationtemplate-delete.md)|None|Delete a template.|
|[List versions](../api/configurationtemplate-list-versions.md)|[configurationTemplateVersion](../resources/configurationtemplateversion.md) collection|List the versions of a template.|
|[Create version](../api/configurationtemplate-post-versions.md)|[configurationTemplateVersion](../resources/configurationtemplateversion.md)|Create a version with a new baseline.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity that created the template. Read-only.|
|createdDateTime|DateTimeOffset|The date and time in ISO 8601 format and UTC. Read-only. Supports `$filter` and `$orderby`.|
|description|String|The description of the template.|
|displayName|String|The display name of the template.|
|id|String|The unique identifier of the template. Read-only.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity that last modified the template. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time in ISO 8601 format and UTC. Identifies when the template was last modified. Read-only.|
|tenantId|String|The identifier of the tenant that owns the template. Read-only. Supports `$filter`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|versions|[configurationTemplateVersion](../resources/configurationtemplateversion.md) collection|The versions of the template. Each version contains a baseline. Supports `$expand`, including nested expansion of **baseline**.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationTemplate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "tenantId": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```
