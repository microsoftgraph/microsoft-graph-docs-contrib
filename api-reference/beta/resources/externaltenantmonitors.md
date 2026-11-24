---
title: "externalTenantMonitors resource type"
description: "Represents monitors from an external tenant that reference a configuration template version."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: resourcePageType
---

# externalTenantMonitors resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents monitors from an external tenant that reference a configuration template version.

This resource is contained in the **referencedExternalMonitors** relationship of a [configurationTemplateVersion](../resources/configurationtemplateversion.md). It isn't a top-level collection at `/externalTenantMonitors`. Retrieve monitor identifiers by expanding the relationship on the template version; this doesn't retrieve full monitor objects from another tenant.

## Methods

None. Retrieve this resource by expanding **referencedExternalMonitors** on [Get configurationTemplateVersion](../api/configurationtemplateversion-get.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|The identifier of the tenant that owns the referenced monitors. The key of this resource. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|monitors|[configurationMonitor](../resources/configurationmonitor.md) collection|The monitors in the external tenant that reference the template version. Read-only. When expanded through **referencedExternalMonitors**, only `$select=id` is supported.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "tenantId",
  "@odata.type": "microsoft.graph.externalTenantMonitors",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalTenantMonitors",
  "tenantId": "String (identifier)"
}
```
