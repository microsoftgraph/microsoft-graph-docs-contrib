---
title: "configurationTemplateVersion resource type"
description: "Represents a version of a reusable configuration template and its desired-state baseline."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: resourcePageType
---

# configurationTemplateVersion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a version of a reusable configuration template and its desired-state baseline.

Versions can't be updated. Create a new version to change the baseline. A template supports at most three versions. Use `latest` as the version key when retrieving the highest-numbered version. A monitor created with `"version": "latest"` is pinned to the version resolved at creation; it does not follow later versions.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationtemplate-list-versions.md)|[configurationTemplateVersion](../resources/configurationtemplateversion.md) collection|List the versions of a template.|
|[Create](../api/configurationtemplate-post-versions.md)|[configurationTemplateVersion](../resources/configurationtemplateversion.md)|Create a version with a baseline.|
|[Get](../api/configurationtemplateversion-get.md)|[configurationTemplateVersion](../resources/configurationtemplateversion.md)|Get a version, optionally expanding its baseline and monitor references.|
|[Delete](../api/configurationtemplateversion-delete.md)|None|Delete a version that isn't referenced by a monitor.|
|[Get baseline](../api/configurationbaseline-get.md)|[configurationBaseline](../resources/configurationbaseline.md)|Get the baseline of a template version.|
|[List referenced internal monitors](../api/configurationtemplateversion-list-referencedinternalmonitors.md)|[configurationMonitor](../resources/configurationmonitor.md) collection|List monitors in the same tenant that reference the version.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity that created the version. Read-only.|
|createdDateTime|DateTimeOffset|The date and time in ISO 8601 format and UTC. Identifies when the version was created. Read-only. Supports `$filter` and `$orderby`.|
|templateId|String|The identifier of the parent configuration template. Read-only.|
|version|String|The version identifier and key of this resource. The service assigns sequential string values, such as `"1"` and `"2"`. Read-only. Supports `$filter` and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationbaseline.md)|The desired-state baseline for this version. Set when the version is created and read-only afterward. Supports `$expand`.|
|referencedExternalMonitors|[externalTenantMonitors](../resources/externaltenantmonitors.md) collection|Read-only references to monitors in other tenants, grouped by tenant. Supports `$expand`. To include monitor identifiers, use `$expand=referencedExternalMonitors($expand=monitors($select=id))`. Only the monitor **id** is available in this nested expansion.|
|referencedInternalMonitors|[configurationMonitor](../resources/configurationmonitor.md) collection|The monitors in the template's tenant that reference this version. Read-only; end users can't add or remove references directly. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "version",
  "@odata.type": "microsoft.graph.configurationTemplateVersion",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationTemplateVersion",
  "version": "String (identifier)",
  "templateId": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```
