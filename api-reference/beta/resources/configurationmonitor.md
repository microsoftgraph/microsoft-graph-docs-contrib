---
title: "configurationMonitor resource type"
description: "Represents the information and properties of a configurationMonitor object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: resourcePageType
---

# configurationMonitor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [configurationMonitor](../resources/configurationmonitor.md) object. This resource allows administrators to create and manage monitors for tenant or drift monitoring across all workloads supported by Tenant Configuration Management, enabling periodic detection of deviations from the desired configuration state. It also supports applying a desired-state baseline once.

The default `monitorOnly` mode detects drift on a schedule. The `applyOnce` mode applies the baseline once in a background job on behalf of the signed-in administrator, then makes the monitor inactive. To run an inactive `applyOnce` monitor again, update its **status** to `active`. The `applyOnce` mode is available in preview through Microsoft Graph beta and requires delegated permissions. See [Set up permissions for remediation and applyOnce](/graph/utcm-authentication-setup#set-up-permissions-for-remediation-and-applyonce-preview).

A monitor can also reference a specific [configurationTemplateVersion](../resources/configurationtemplateversion.md). Creating a new template version doesn't automatically update the monitor.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationmonitors.md)|[configurationMonitor](../resources/configurationmonitor.md) collection|Get a list of the [configurationMonitor](../resources/configurationmonitor.md) objects and their properties.|
|[Create](../api/configurationmanagement-post-configurationmonitors.md)|[configurationMonitor](../resources/configurationmonitor.md)|Create a monitor that detects drift on a schedule or applies a baseline once.|
|[Get](../api/configurationmonitor-get.md)|[configurationMonitor](../resources/configurationmonitor.md)|Get the properties and relationships of a [configurationMonitor](../resources/configurationmonitor.md) object.|
|[Update](../api/configurationmonitor-update.md)|[configurationMonitor](../resources/configurationmonitor.md)|Update the properties of a [configurationMonitor](../resources/configurationmonitor.md) object, including the monitor name, description, and baseline.|
|[Delete](../api/configurationmonitor-delete.md)|None|Delete a [configurationMonitor](../resources/configurationmonitor.md) object permanently.|
|[Get configuration baseline](../api/configurationbaseline-get.md)|[configurationBaseline](../resources/configurationbaseline.md) collection|Read the properties and relationships of a [configurationBaseline](../resources/configurationbaseline.md) object that is attached to a specific monitor.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the monitor. <br><br>Requires `$select` to retrieve. Supports `$filter` (`eq`).|
|createdDateTime|DateTimeOffset|The date and time when the monitor was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Supports `$filter` (`eq`, `ne`, `ge`, `le`) and `$orderby`.|
|description|String|User-friendly description of the monitor given by the user. <br><br>Supports `$filter` (`eq`, `ne`, `startsWith`) and `$orderby`.|
|displayName|String|User-friendly name given by the user to the monitor. <br><br>Supports `$filter` (`eq`, `ne`, `startsWith`) and `$orderby`.|
|id|String|Globally unique identifier (GUID) for the monitor. System-generated. Inherited from [entity](../resources/entity.md). <br><br>Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|inactivationReason|String|The reason for the monitor's inactivation. <br><br>Requires `$select` to retrieve.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the monitor. <br><br>Requires `$select` to retrieve. Supports `$filter` (`eq`).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the monitor was last modified. If no modifications are made to the monitor, it's the same as **createdDateTime**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Supports `$filter` (`eq`, `ne`, `ge`, `le`) and `$orderby`.|
|mode|monitorMode|The mode in which the monitor runs. The possible values are: `monitorOnly`, `applyOnce`, `unknownFutureValue`. The default is `monitorOnly`. `monitorOnly` detects drift on a schedule; `applyOnce` applies the desired-state baseline once. <br><br>Supports `$filter` (`eq`, `ne`).|
|monitorRunFrequencyInHours|Int32|Frequency at which a `monitorOnly` monitor runs. The default frequency is six hours. Regardless of when you create or update a `monitorOnly` monitor, it gets triggered within the next 6 hours. Currently, monitors are picked up at fixed times: 6 AM, 12 PM, 6 PM, and 12 AM (all in GMT). For example, if you create a monitor at 9 AM, it gets triggered around 12 PM. If you update a monitor at 4 PM, it gets triggered around 6 PM. This schedule doesn't apply to `applyOnce` monitors.|
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-value pairs that contain parameter values which might be used in the baseline. <br><br>Requires `$select` to retrieve.|
|runningOnBehalfOf|[identitySet](../resources/identityset.md)|The identity of the user on whose behalf the monitor runs. Read-only.|
|status|monitorStatus|Status of the monitor. The possible values are: `active`, `inactive`, `unknownFutureValue`. The default is `active`. An `applyOnce` monitor becomes `inactive` after execution. <br><br>Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|templateOwnerTenantId|String|The identifier of the tenant that owns the referenced template. For a template in the same tenant, the service populates this property automatically. Supports `$filter`.|
|tenantId|String|Globally unique identifier (GUID) of the tenant for which the monitor runs. Fetched automatically by the system. <br><br>Supports `$filter` (`eq`, `ne`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationbaseline.md)|A complex object that contains details of at least one resource and one property associated with the resource to be monitored. Supports `$expand`.|
|template|[configurationTemplateVersion](../resources/configurationtemplateversion.md)|The template version referenced by the monitor. Supply **templateId** and **version** inline when creating a template-linked monitor. Supports `$expand`; cross-tenant expansion requires `$select=version,templateId`. Direct writes to the `/template` navigation endpoint aren't supported.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationMonitor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationMonitor",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "inactivationReason": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "mode": "String",
  "monitorRunFrequencyInHours": "Int32",
  "parameters": {"@odata.type": "microsoft.graph.openComplexDictionaryType"},
  "runningOnBehalfOf": {"@odata.type": "microsoft.graph.identitySet"},
  "status": "String",
  "templateOwnerTenantId": "String",
  "tenantId": "String"
}
```
