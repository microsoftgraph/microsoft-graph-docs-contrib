---
title: "auditEvent resource type"
description: "Represents an audit event for managed tenants in Microsoft 365 Lighthouse."
author: "vkumar2015"
ms.localizationpriority: medium
ms.prod: "multi-tenant-management"
doc_type: resourcePageType
---

# auditEvent resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit event for managed tenants in Microsoft 365 Lighthouse.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List auditEvents](../api/managedtenants-managedtenant-list-auditevents.md)|[microsoft.graph.managedTenants.auditEvent](../resources/managedtenants-auditevent.md) collection|Get a list of the [auditEvent](../resources/managedtenants-auditevent.md) objects and their properties.|
|[Get auditEvent](../api/managedtenants-auditevent-get.md)|[microsoft.graph.managedTenants.auditEvent](../resources/managedtenants-auditevent.md)|Read the properties and relationships of an [auditEvent](../resources/managedtenants-auditevent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activity|String|A string which uniquely represents the operation that occurred. Required. Read-only.|
|activityDateTime|DateTimeOffset|The time when the activity ocurred. Required. Read-only.|
|activityId|String|The identifier of the activity request that made the audit event. Required. Read-only.|
|category|String|A category which represents a logical grouping of activities. Required. Read-only.|
|httpVerb|String|The HTTP verb that was used when making the API request. Required. Read-only.|
|id|String|The unique identifier of the audit event. Required. Read-only.|
|initiatedByAppId|String|The identifier of the app that was used to make the request. Required. Read-only.|
|initiatedByUpn|String|The UPN of the user who initiated the activity. Required. Read-only.|
|initiatedByUserId|String|The identifier of the user who initiated the activity. Required. Read-only.|
|ipAddress|String|The IP address of where the activity was initiated. This may be an IPv4 or IPv6 address. Required. Read-only.|
|requestBody|String|The raw HTTP request body. Some sensitive information may be removed.|
|requestUrl|String|The raw HTTP request URL. Required. Read-only.|
|tenantIds|String|The collection of Azure Active Directory tenant identifiers for the [managed tenants](../resources/managedtenants-tenant.md) that were impacted by this change. This is formatted as a list of comma-separated values. Required. Read-only.|
|tenantNames|String|The collection of tenant names that were impacted by this change. This is formatted as a list of comma-separated values. Required. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.auditEvent",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.auditEvent",
  "activity": "String",
  "activityDateTime": "String (timestamp)",
  "activityId": "String",
  "category": "String",
  "httpVerb": "String",
  "id": "String (identifier)",
  "initiatedByAppId": "String",
  "initiatedByUpn": "String",
  "initiatedByUserId": "String",
  "ipAddress": "String",
  "requestBody": "String",
  "requestUrl": "String",
  "tenantIds": "String",
  "tenantNames": "String"
}
```

